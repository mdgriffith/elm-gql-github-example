module GitHub.Enum.ProjectOrderField exposing (ProjectOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectOrderField
-}


import Json.Decode
import Json.Encode


type ProjectOrderField
    = CREATED_AT
    | UPDATED_AT
    | NAME


list : List ProjectOrderField
list =
    [ CREATED_AT, UPDATED_AT, NAME ]


decoder : Json.Decode.Decoder ProjectOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    "NAME" ->
                        Json.Decode.succeed NAME

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"

        NAME ->
            Json.Encode.string "NAME"


