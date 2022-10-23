module GitHub.Enum.ProjectV2ItemFieldValueOrderField exposing (ProjectV2ItemFieldValueOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2ItemFieldValueOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2ItemFieldValueOrderField
    = POSITION


all : List ProjectV2ItemFieldValueOrderField
all =
    [ POSITION ]


decoder : Json.Decode.Decoder ProjectV2ItemFieldValueOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


