module GitHub.Enum.TeamRepositoryOrderField exposing (TeamRepositoryOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamRepositoryOrderField
-}


import Json.Decode
import Json.Encode


type TeamRepositoryOrderField
    = CREATED_AT
    | UPDATED_AT
    | PUSHED_AT
    | NAME
    | PERMISSION
    | STARGAZERS


list : List TeamRepositoryOrderField
list =
    [ CREATED_AT, UPDATED_AT, PUSHED_AT, NAME, PERMISSION, STARGAZERS ]


decoder : Json.Decode.Decoder TeamRepositoryOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    "PUSHED_AT" ->
                        Json.Decode.succeed PUSHED_AT

                    "NAME" ->
                        Json.Decode.succeed NAME

                    "PERMISSION" ->
                        Json.Decode.succeed PERMISSION

                    "STARGAZERS" ->
                        Json.Decode.succeed STARGAZERS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamRepositoryOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"

        PUSHED_AT ->
            Json.Encode.string "PUSHED_AT"

        NAME ->
            Json.Encode.string "NAME"

        PERMISSION ->
            Json.Encode.string "PERMISSION"

        STARGAZERS ->
            Json.Encode.string "STARGAZERS"


