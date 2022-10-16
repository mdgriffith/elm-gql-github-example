module GitHub.Enum.MergeCommitTitle exposing (MergeCommitTitle(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, MergeCommitTitle
-}


import Json.Decode
import Json.Encode


type MergeCommitTitle
    = PR_TITLE
    | MERGE_MESSAGE


all : List MergeCommitTitle
all =
    [ PR_TITLE, MERGE_MESSAGE ]


decoder : Json.Decode.Decoder MergeCommitTitle
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PR_TITLE" ->
                        Json.Decode.succeed PR_TITLE

                    "MERGE_MESSAGE" ->
                        Json.Decode.succeed MERGE_MESSAGE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MergeCommitTitle -> Json.Encode.Value
encode val =
    case val of
        PR_TITLE ->
            Json.Encode.string "PR_TITLE"

        MERGE_MESSAGE ->
            Json.Encode.string "MERGE_MESSAGE"


