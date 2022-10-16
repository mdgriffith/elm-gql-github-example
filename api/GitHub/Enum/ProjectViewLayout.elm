module GitHub.Enum.ProjectViewLayout exposing (ProjectViewLayout(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectViewLayout
-}


import Json.Decode
import Json.Encode


type ProjectViewLayout
    = BOARD_LAYOUT
    | TABLE_LAYOUT


all : List ProjectViewLayout
all =
    [ BOARD_LAYOUT, TABLE_LAYOUT ]


decoder : Json.Decode.Decoder ProjectViewLayout
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "BOARD_LAYOUT" ->
                        Json.Decode.succeed BOARD_LAYOUT

                    "TABLE_LAYOUT" ->
                        Json.Decode.succeed TABLE_LAYOUT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectViewLayout -> Json.Encode.Value
encode val =
    case val of
        BOARD_LAYOUT ->
            Json.Encode.string "BOARD_LAYOUT"

        TABLE_LAYOUT ->
            Json.Encode.string "TABLE_LAYOUT"


