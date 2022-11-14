module Main exposing (main)

{-| -}

import Browser
import Dict exposing (Dict)
import GitHub
import GraphQL.Engine
import Html exposing (Html)
import Http
import Repo.RepoDetails as RepoDetails
import Repo.RepoList as RepoList


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type alias Model =
    { authToken : Maybe String
    , repos : Maybe RepoList.Response
    , details : Dict String RepoDetails.Response
    , selected : Maybe RepoId
    }


init : () -> ( Model, Cmd Msg )
init flags =
    ( { authToken = Nothing
      , repos = Nothing
      , details = Dict.empty
      , selected = Nothing
      }
    , Cmd.none
    )


type alias RepoId =
    { owner : String, name : String }


repoIdToString : RepoId -> String
repoIdToString repo =
    repo.owner ++ repo.name


type Msg
    = AuthTokenEntered String
    | SearchClicked
    | RepoDetailsClicked RepoId
    | RepoListFetched (Result GraphQL.Engine.Error RepoList.Response)
    | RepoDetailsFetched RepoId (Result GraphQL.Engine.Error RepoDetails.Response)


request :
    Maybe String
    -> (Result GraphQL.Engine.Error data -> msg)
    -> GitHub.Query data
    -> Cmd msg
request maybeAuthToken toMsg query =
    case maybeAuthToken of
        Nothing ->
            Cmd.none

        Just authToken ->
            GitHub.query query
                { headers = [ Http.header "Authorization" ("bearer " ++ authToken) ]
                , url = "https://api.github.com/graphql"
                , timeout = Nothing
                , tracker = Nothing
                }
                |> Cmd.map toMsg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        AuthTokenEntered auth ->
            ( { model | authToken = Just auth }
            , Cmd.none
            )

        SearchClicked ->
            ( model
            , request model.authToken
                RepoListFetched
                (RepoList.query { numberOfRepos = 20 })
            )

        RepoDetailsClicked id ->
            ( { model | selected = Just id }
            , request model.authToken
                (RepoDetailsFetched id)
                (RepoDetails.query id)
            )

        RepoListFetched (Ok repoList) ->
            ( { model | repos = Just repoList }
            , Cmd.none
            )

        RepoListFetched (Err error) ->
            ( model
            , Cmd.none
            )

        RepoDetailsFetched id (Ok details) ->
            ( { model | details = model.details |> Dict.insert (repoIdToString id) details }
            , Cmd.none
            )

        RepoDetailsFetched id (Err err) ->
            ( model
            , Cmd.none
            )


view : Model -> Browser.Document Msg
view model =
    { title = "Elm GQL - GitHub Example"
    , body =
        [ case model.repos of
            Nothing ->
                -- no repos have been successfully request, we probably need to ask for a token
                Html.div [] []

            Just { viewer } ->
                -- we have a list, we then have a good token
                Html.div []
                    [ Html.div []
                        (List.map viewRepoListItem (collapseRelay viewer.repositories.nodes))
                    , viewSelected model.selected model.details
                    ]
        ]
    }


collapseRelay : Maybe (List (Maybe a)) -> List a
collapseRelay maybe =
    case maybe of
        Nothing ->
            []

        Just list ->
            List.filterMap identity list


viewRepoListItem : RepoList.Nodes -> Html Msg
viewRepoListItem node =
    Html.text node.name


viewSelected : Maybe RepoId -> Dict String RepoDetails.Response -> Html Msg
viewSelected maybeId detailsCache =
    case maybeId of
        Nothing ->
            Html.div [] []

        Just id ->
            case Dict.get (repoIdToString id) detailsCache of
                Nothing ->
                    -- loading
                    Html.div [] []

                Just details ->
                    -- loaded
                    Html.div [] []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
