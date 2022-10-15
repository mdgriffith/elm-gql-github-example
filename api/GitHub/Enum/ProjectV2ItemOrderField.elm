module GitHub.Enum.ProjectV2ItemOrderField exposing (ProjectV2ItemOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectV2ItemOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2ItemOrderField
    = POSITION


list : List ProjectV2ItemOrderField
list =
    [ POSITION ]


decoder : Json.Decode.Decoder ProjectV2ItemOrderField
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


encode : ProjectV2ItemOrderField -> Json.Encode.Value
encode val =
    case val of
        POSITION ->
            Json.Encode.string "POSITION"


