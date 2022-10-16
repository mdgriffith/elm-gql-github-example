module GitHub.Enum.ProjectV2ItemOrderField exposing (ProjectV2ItemOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2ItemOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2ItemOrderField
    = POSITION


all : List ProjectV2ItemOrderField
all =
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


