module GitHub.Enum.SearchType exposing (SearchType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SearchType
-}


import Json.Decode
import Json.Encode


type SearchType
    = ISSUE
    | REPOSITORY
    | USER
    | DISCUSSION


list : List SearchType
list =
    [ ISSUE, REPOSITORY, USER, DISCUSSION ]


decoder : Json.Decode.Decoder SearchType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ISSUE" ->
                        Json.Decode.succeed ISSUE

                    "REPOSITORY" ->
                        Json.Decode.succeed REPOSITORY

                    "USER" ->
                        Json.Decode.succeed USER

                    "DISCUSSION" ->
                        Json.Decode.succeed DISCUSSION

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SearchType -> Json.Encode.Value
encode val =
    case val of
        ISSUE ->
            Json.Encode.string "ISSUE"

        REPOSITORY ->
            Json.Encode.string "REPOSITORY"

        USER ->
            Json.Encode.string "USER"

        DISCUSSION ->
            Json.Encode.string "DISCUSSION"


