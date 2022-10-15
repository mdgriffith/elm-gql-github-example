module GitHub.Enum.MilestoneState exposing (MilestoneState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, MilestoneState
-}


import Json.Decode
import Json.Encode


type MilestoneState
    = OPEN
    | CLOSED


list : List MilestoneState
list =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder MilestoneState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


