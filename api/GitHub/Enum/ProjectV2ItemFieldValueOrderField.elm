module GitHub.Enum.ProjectV2ItemFieldValueOrderField exposing (ProjectV2ItemFieldValueOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectV2ItemFieldValueOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2ItemFieldValueOrderField
    = POSITION


list : List ProjectV2ItemFieldValueOrderField
list =
    [ POSITION ]


decoder : Json.Decode.Decoder ProjectV2ItemFieldValueOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "POSITION" ->
                        Json.Decode.succeed POSITION

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2ItemFieldValueOrderField -> Json.Encode.Value
encode val =
    case val of
        POSITION ->
            Json.Encode.string "POSITION"


