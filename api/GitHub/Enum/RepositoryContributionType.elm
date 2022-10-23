module GitHub.Enum.RepositoryContributionType exposing (RepositoryContributionType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryContributionType
-}


import Json.Decode
import Json.Encode


type RepositoryContributionType
    = COMMIT
    | ISSUE
    | PULL_REQUEST
    | REPOSITORY
    | PULL_REQUEST_REVIEW


all : List RepositoryContributionType
all =
    [ COMMIT, ISSUE, PULL_REQUEST, REPOSITORY, PULL_REQUEST_REVIEW ]


decoder : Json.Decode.Decoder RepositoryContributionType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "COMMIT" ->
                    Json.Decode.succeed COMMIT

                "ISSUE" ->
                    Json.Decode.succeed ISSUE

                "PULL_REQUEST" ->
                    Json.Decode.succeed PULL_REQUEST

                "REPOSITORY" ->
                    Json.Decode.succeed REPOSITORY

                "PULL_REQUEST_REVIEW" ->
                    Json.Decode.succeed PULL_REQUEST_REVIEW

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryContributionType -> Json.Encode.Value
encode val =
    case val of
        COMMIT ->
            Json.Encode.string "COMMIT"

        ISSUE ->
            Json.Encode.string "ISSUE"

        PULL_REQUEST ->
            Json.Encode.string "PULL_REQUEST"

        REPOSITORY ->
            Json.Encode.string "REPOSITORY"

        PULL_REQUEST_REVIEW ->
            Json.Encode.string "PULL_REQUEST_REVIEW"


