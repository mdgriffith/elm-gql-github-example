module GitHub.Enum.SubscriptionState exposing (SubscriptionState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SubscriptionState
-}


import Json.Decode
import Json.Encode


type SubscriptionState
    = UNSUBSCRIBED
    | SUBSCRIBED
    | IGNORED


list : List SubscriptionState
list =
    [ UNSUBSCRIBED, SUBSCRIBED, IGNORED ]


decoder : Json.Decode.Decoder SubscriptionState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


