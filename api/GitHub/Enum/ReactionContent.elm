module GitHub.Enum.ReactionContent exposing (ReactionContent(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ReactionContent
-}


import Json.Decode
import Json.Encode


type ReactionContent
    = THUMBS_UP
    | THUMBS_DOWN
    | LAUGH
    | HOORAY
    | CONFUSED
    | HEART
    | ROCKET
    | EYES


all : List ReactionContent
all =
    [ THUMBS_UP, THUMBS_DOWN, LAUGH, HOORAY, CONFUSED, HEART, ROCKET, EYES ]


decoder : Json.Decode.Decoder ReactionContent
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "THUMBS_UP" ->
                        Json.Decode.succeed THUMBS_UP

                    "THUMBS_DOWN" ->
                        Json.Decode.succeed THUMBS_DOWN

                    "LAUGH" ->
                        Json.Decode.succeed LAUGH

                    "HOORAY" ->
                        Json.Decode.succeed HOORAY

                    "CONFUSED" ->
                        Json.Decode.succeed CONFUSED

                    "HEART" ->
                        Json.Decode.succeed HEART

                    "ROCKET" ->
                        Json.Decode.succeed ROCKET

                    "EYES" ->
                        Json.Decode.succeed EYES

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ReactionContent -> Json.Encode.Value
encode val =
    case val of
        THUMBS_UP ->
            Json.Encode.string "THUMBS_UP"

        THUMBS_DOWN ->
            Json.Encode.string "THUMBS_DOWN"

        LAUGH ->
            Json.Encode.string "LAUGH"

        HOORAY ->
            Json.Encode.string "HOORAY"

        CONFUSED ->
            Json.Encode.string "CONFUSED"

        HEART ->
            Json.Encode.string "HEART"

        ROCKET ->
            Json.Encode.string "ROCKET"

        EYES ->
            Json.Encode.string "EYES"


