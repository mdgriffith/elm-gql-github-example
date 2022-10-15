module GitHub.Enum.SquashMergeCommitTitle exposing (SquashMergeCommitTitle(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SquashMergeCommitTitle
-}


import Json.Decode
import Json.Encode


type SquashMergeCommitTitle
    = PR_TITLE
    | COMMIT_OR_PR_TITLE


list : List SquashMergeCommitTitle
list =
    [ PR_TITLE, COMMIT_OR_PR_TITLE ]


decoder : Json.Decode.Decoder SquashMergeCommitTitle
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PR_TITLE" ->
                        Json.Decode.succeed PR_TITLE

                    "COMMIT_OR_PR_TITLE" ->
                        Json.Decode.succeed COMMIT_OR_PR_TITLE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SquashMergeCommitTitle -> Json.Encode.Value
encode val =
    case val of
        PR_TITLE ->
            Json.Encode.string "PR_TITLE"

        COMMIT_OR_PR_TITLE ->
            Json.Encode.string "COMMIT_OR_PR_TITLE"


