module GitHub.Enum.RepositoryOrderField exposing (RepositoryOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepositoryOrderField
-}


import Json.Decode
import Json.Encode


type RepositoryOrderField
    = CREATED_AT
    | UPDATED_AT
    | PUSHED_AT
    | NAME
    | STARGAZERS


list : List RepositoryOrderField
list =
    [ CREATED_AT, UPDATED_AT, PUSHED_AT, NAME, STARGAZERS ]


decoder : Json.Decode.Decoder RepositoryOrderField
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

                    "STARGAZERS" ->
                        Json.Decode.succeed STARGAZERS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryOrderField -> Json.Encode.Value
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

        STARGAZERS ->
            Json.Encode.string "STARGAZERS"


