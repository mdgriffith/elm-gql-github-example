module GitHub.Enum.SquashMergeCommitMessage exposing (SquashMergeCommitMessage(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SquashMergeCommitMessage
-}


import Json.Decode
import Json.Encode


type SquashMergeCommitMessage
    = PR_BODY
    | COMMIT_MESSAGES
    | BLANK


all : List SquashMergeCommitMessage
all =
    [ PR_BODY, COMMIT_MESSAGES, BLANK ]


decoder : Json.Decode.Decoder SquashMergeCommitMessage
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PR_BODY" ->
                        Json.Decode.succeed PR_BODY

                    "COMMIT_MESSAGES" ->
                        Json.Decode.succeed COMMIT_MESSAGES

                    "BLANK" ->
                        Json.Decode.succeed BLANK

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SquashMergeCommitMessage -> Json.Encode.Value
encode val =
    case val of
        PR_BODY ->
            Json.Encode.string "PR_BODY"

        COMMIT_MESSAGES ->
            Json.Encode.string "COMMIT_MESSAGES"

        BLANK ->
            Json.Encode.string "BLANK"


