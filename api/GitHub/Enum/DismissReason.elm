module GitHub.Enum.DismissReason exposing (DismissReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DismissReason
-}


import Json.Decode
import Json.Encode


type DismissReason
    = FIX_STARTED
    | NO_BANDWIDTH
    | TOLERABLE_RISK
    | INACCURATE
    | NOT_USED


all : List DismissReason
all =
    [ FIX_STARTED, NO_BANDWIDTH, TOLERABLE_RISK, INACCURATE, NOT_USED ]


decoder : Json.Decode.Decoder DismissReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "FIX_STARTED" ->
                        Json.Decode.succeed FIX_STARTED

                    "NO_BANDWIDTH" ->
                        Json.Decode.succeed NO_BANDWIDTH

                    "TOLERABLE_RISK" ->
                        Json.Decode.succeed TOLERABLE_RISK

                    "INACCURATE" ->
                        Json.Decode.succeed INACCURATE

                    "NOT_USED" ->
                        Json.Decode.succeed NOT_USED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DismissReason -> Json.Encode.Value
encode val =
    case val of
        FIX_STARTED ->
            Json.Encode.string "FIX_STARTED"

        NO_BANDWIDTH ->
            Json.Encode.string "NO_BANDWIDTH"

        TOLERABLE_RISK ->
            Json.Encode.string "TOLERABLE_RISK"

        INACCURATE ->
            Json.Encode.string "INACCURATE"

        NOT_USED ->
            Json.Encode.string "NOT_USED"


