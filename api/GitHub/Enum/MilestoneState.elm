module GitHub.Enum.MilestoneState exposing (MilestoneState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, MilestoneState
-}


import Json.Decode
import Json.Encode


type MilestoneState
    = OPEN
    | CLOSED


all : List MilestoneState
all =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder MilestoneState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "OPEN" ->
                    Json.Decode.succeed OPEN

                "CLOSED" ->
                    Json.Decode.succeed CLOSED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MilestoneState -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


