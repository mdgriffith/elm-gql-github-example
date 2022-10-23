module GitHub.Enum.SubscriptionState exposing (SubscriptionState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SubscriptionState
-}


import Json.Decode
import Json.Encode


type SubscriptionState
    = UNSUBSCRIBED
    | SUBSCRIBED
    | IGNORED


all : List SubscriptionState
all =
    [ UNSUBSCRIBED, SUBSCRIBED, IGNORED ]


decoder : Json.Decode.Decoder SubscriptionState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "UNSUBSCRIBED" ->
                    Json.Decode.succeed UNSUBSCRIBED

                "SUBSCRIBED" ->
                    Json.Decode.succeed SUBSCRIBED

                "IGNORED" ->
                    Json.Decode.succeed IGNORED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SubscriptionState -> Json.Encode.Value
encode val =
    case val of
        UNSUBSCRIBED ->
            Json.Encode.string "UNSUBSCRIBED"

        SUBSCRIBED ->
            Json.Encode.string "SUBSCRIBED"

        IGNORED ->
            Json.Encode.string "IGNORED"


