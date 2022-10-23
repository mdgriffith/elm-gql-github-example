module GitHub.Enum.IssueStateReason exposing (IssueStateReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueStateReason
-}


import Json.Decode
import Json.Encode


type IssueStateReason
    = REOPENED
    | NOT_PLANNED
    | COMPLETED


all : List IssueStateReason
all =
    [ REOPENED, NOT_PLANNED, COMPLETED ]


decoder : Json.Decode.Decoder IssueStateReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "REOPENED" ->
                    Json.Decode.succeed REOPENED

                "NOT_PLANNED" ->
                    Json.Decode.succeed NOT_PLANNED

                "COMPLETED" ->
                    Json.Decode.succeed COMPLETED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IssueStateReason -> Json.Encode.Value
encode val =
    case val of
        REOPENED ->
            Json.Encode.string "REOPENED"

        NOT_PLANNED ->
            Json.Encode.string "NOT_PLANNED"

        COMPLETED ->
            Json.Encode.string "COMPLETED"


