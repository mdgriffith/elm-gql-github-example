module GitHub.Enum.PullRequestMergeMethod exposing (PullRequestMergeMethod(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PullRequestMergeMethod
-}


import Json.Decode
import Json.Encode


type PullRequestMergeMethod
    = MERGE
    | SQUASH
    | REBASE


list : List PullRequestMergeMethod
list =
    [ MERGE, SQUASH, REBASE ]


decoder : Json.Decode.Decoder PullRequestMergeMethod
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MERGE" ->
                        Json.Decode.succeed MERGE

                    "SQUASH" ->
                        Json.Decode.succeed SQUASH

                    "REBASE" ->
                        Json.Decode.succeed REBASE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestMergeMethod -> Json.Encode.Value
encode val =
    case val of
        MERGE ->
            Json.Encode.string "MERGE"

        SQUASH ->
            Json.Encode.string "SQUASH"

        REBASE ->
            Json.Encode.string "REBASE"


