module GitHub.Enum.TrackedIssueStates exposing (TrackedIssueStates(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TrackedIssueStates
-}


import Json.Decode
import Json.Encode


type TrackedIssueStates
    = OPEN
    | CLOSED


all : List TrackedIssueStates
all =
    [ OPEN, CLOSED ]


decoder : Json.Decode.Decoder TrackedIssueStates
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


encode : TrackedIssueStates -> Json.Encode.Value
encode val =
    case val of
        OPEN ->
            Json.Encode.string "OPEN"

        CLOSED ->
            Json.Encode.string "CLOSED"


