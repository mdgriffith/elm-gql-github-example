module GitHub.Enum.IssueClosedStateReason exposing (IssueClosedStateReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueClosedStateReason
-}


import Json.Decode
import Json.Encode


type IssueClosedStateReason
    = COMPLETED
    | NOT_PLANNED


all : List IssueClosedStateReason
all =
    [ COMPLETED, NOT_PLANNED ]


decoder : Json.Decode.Decoder IssueClosedStateReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "COMPLETED" ->
                        Json.Decode.succeed COMPLETED

                    "NOT_PLANNED" ->
                        Json.Decode.succeed NOT_PLANNED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IssueClosedStateReason -> Json.Encode.Value
encode val =
    case val of
        COMPLETED ->
            Json.Encode.string "COMPLETED"

        NOT_PLANNED ->
            Json.Encode.string "NOT_PLANNED"


