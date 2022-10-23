module GitHub.Enum.SponsorsActivityAction exposing (SponsorsActivityAction(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorsActivityAction
-}


import Json.Decode
import Json.Encode


type SponsorsActivityAction
    = NEW_SPONSORSHIP
    | CANCELLED_SPONSORSHIP
    | TIER_CHANGE
    | REFUND
    | PENDING_CHANGE
    | SPONSOR_MATCH_DISABLED


all : List SponsorsActivityAction
all =
    [ NEW_SPONSORSHIP
    , CANCELLED_SPONSORSHIP
    , TIER_CHANGE
    , REFUND
    , PENDING_CHANGE
    , SPONSOR_MATCH_DISABLED
    ]


decoder : Json.Decode.Decoder SponsorsActivityAction
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NEW_SPONSORSHIP" ->
                    Json.Decode.succeed NEW_SPONSORSHIP

                "CANCELLED_SPONSORSHIP" ->
                    Json.Decode.succeed CANCELLED_SPONSORSHIP

                "TIER_CHANGE" ->
                    Json.Decode.succeed TIER_CHANGE

                "REFUND" ->
                    Json.Decode.succeed REFUND

                "PENDING_CHANGE" ->
                    Json.Decode.succeed PENDING_CHANGE

                "SPONSOR_MATCH_DISABLED" ->
                    Json.Decode.succeed SPONSOR_MATCH_DISABLED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorsActivityAction -> Json.Encode.Value
encode val =
    case val of
        NEW_SPONSORSHIP ->
            Json.Encode.string "NEW_SPONSORSHIP"

        CANCELLED_SPONSORSHIP ->
            Json.Encode.string "CANCELLED_SPONSORSHIP"

        TIER_CHANGE ->
            Json.Encode.string "TIER_CHANGE"

        REFUND ->
            Json.Encode.string "REFUND"

        PENDING_CHANGE ->
            Json.Encode.string "PENDING_CHANGE"

        SPONSOR_MATCH_DISABLED ->
            Json.Encode.string "SPONSOR_MATCH_DISABLED"


