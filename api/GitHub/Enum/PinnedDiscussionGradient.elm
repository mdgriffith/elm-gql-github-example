module GitHub.Enum.PinnedDiscussionGradient exposing (PinnedDiscussionGradient(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PinnedDiscussionGradient
-}


import Json.Decode
import Json.Encode


type PinnedDiscussionGradient
    = RED_ORANGE
    | BLUE_MINT
    | BLUE_PURPLE
    | PINK_BLUE
    | PURPLE_CORAL


all : List PinnedDiscussionGradient
all =
    [ RED_ORANGE, BLUE_MINT, BLUE_PURPLE, PINK_BLUE, PURPLE_CORAL ]


decoder : Json.Decode.Decoder PinnedDiscussionGradient
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "RED_ORANGE" ->
                        Json.Decode.succeed RED_ORANGE

                    "BLUE_MINT" ->
                        Json.Decode.succeed BLUE_MINT

                    "BLUE_PURPLE" ->
                        Json.Decode.succeed BLUE_PURPLE

                    "PINK_BLUE" ->
                        Json.Decode.succeed PINK_BLUE

                    "PURPLE_CORAL" ->
                        Json.Decode.succeed PURPLE_CORAL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PinnedDiscussionGradient -> Json.Encode.Value
encode val =
    case val of
        RED_ORANGE ->
            Json.Encode.string "RED_ORANGE"

        BLUE_MINT ->
            Json.Encode.string "BLUE_MINT"

        BLUE_PURPLE ->
            Json.Encode.string "BLUE_PURPLE"

        PINK_BLUE ->
            Json.Encode.string "PINK_BLUE"

        PURPLE_CORAL ->
            Json.Encode.string "PURPLE_CORAL"


