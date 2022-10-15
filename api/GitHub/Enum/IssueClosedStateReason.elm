module GitHub.Enum.IssueClosedStateReason exposing (IssueClosedStateReason(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, IssueClosedStateReason
-}


import Json.Decode
import Json.Encode


type IssueClosedStateReason
    = COMPLETED
    | NOT_PLANNED


list : List IssueClosedStateReason
list =
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


