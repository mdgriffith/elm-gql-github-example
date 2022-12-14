module GitHub.Enum.PinnedDiscussionPattern exposing (PinnedDiscussionPattern(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PinnedDiscussionPattern
-}


import Json.Decode
import Json.Encode


type PinnedDiscussionPattern
    = DOT_FILL
    | PLUS
    | ZAP
    | CHEVRON_UP
    | DOT
    | HEART_FILL


all : List PinnedDiscussionPattern
all =
    [ DOT_FILL, PLUS, ZAP, CHEVRON_UP, DOT, HEART_FILL ]


decoder : Json.Decode.Decoder PinnedDiscussionPattern
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "DOT_FILL" ->
                    Json.Decode.succeed DOT_FILL

                "PLUS" ->
                    Json.Decode.succeed PLUS

                "ZAP" ->
                    Json.Decode.succeed ZAP

                "CHEVRON_UP" ->
                    Json.Decode.succeed CHEVRON_UP

                "DOT" ->
                    Json.Decode.succeed DOT

                "HEART_FILL" ->
                    Json.Decode.succeed HEART_FILL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PinnedDiscussionPattern -> Json.Encode.Value
encode val =
    case val of
        DOT_FILL ->
            Json.Encode.string "DOT_FILL"

        PLUS ->
            Json.Encode.string "PLUS"

        ZAP ->
            Json.Encode.string "ZAP"

        CHEVRON_UP ->
            Json.Encode.string "CHEVRON_UP"

        DOT ->
            Json.Encode.string "DOT"

        HEART_FILL ->
            Json.Encode.string "HEART_FILL"


