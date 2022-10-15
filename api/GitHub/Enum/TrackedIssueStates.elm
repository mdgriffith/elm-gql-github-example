module GitHub.Enum.TrackedIssueStates exposing (TrackedIssueStates(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TrackedIssueStates
-}


import Json.Decode
import Json.Encode


type TrackedIssueStates
    = OPEN
    | CLOSED


list : List TrackedIssueStates
list =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder TrackedIssueStates
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


encode : TrackedIssueStates -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


