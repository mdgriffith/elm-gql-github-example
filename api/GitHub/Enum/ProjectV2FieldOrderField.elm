module GitHub.Enum.ProjectV2FieldOrderField exposing (ProjectV2FieldOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectV2FieldOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2FieldOrderField
    = POSITION
    | CREATED_AT
    | NAME


list : List ProjectV2FieldOrderField
list =
    [ POSITION, CREATED_AT, NAME ]


decoder : Json.Decode.Decoder ProjectV2FieldOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "POSITION" ->
                        Json.Decode.succeed POSITION

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "NAME" ->
                        Json.Decode.succeed NAME

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2FieldOrderField -> Json.Encode.Value
encode val =
    case val of
        POSITION ->
            Json.Encode.string "POSITION"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        NAME ->
            Json.Encode.string "NAME"


