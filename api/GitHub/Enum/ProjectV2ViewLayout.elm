module GitHub.Enum.ProjectV2ViewLayout exposing (ProjectV2ViewLayout(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2ViewLayout
-}


import Json.Decode
import Json.Encode


type ProjectV2ViewLayout
    = BOARD_LAYOUT
    | TABLE_LAYOUT


all : List ProjectV2ViewLayout
all =
    [ BOARD_LAYOUT, TABLE_LAYOUT ]


decoder : Json.Decode.Decoder ProjectV2ViewLayout
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "BOARD_LAYOUT" ->
                    Json.Decode.succeed BOARD_LAYOUT

                "TABLE_LAYOUT" ->
                    Json.Decode.succeed TABLE_LAYOUT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2ViewLayout -> Json.Encode.Value
encode val =
    case val of
        BOARD_LAYOUT ->
            Json.Encode.string "BOARD_LAYOUT"

        TABLE_LAYOUT ->
            Json.Encode.string "TABLE_LAYOUT"


