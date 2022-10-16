module GitHub.Enum.PullRequestReviewCommentState exposing (PullRequestReviewCommentState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestReviewCommentState
-}


import Json.Decode
import Json.Encode


type PullRequestReviewCommentState
    = PENDING
    | SUBMITTED


all : List PullRequestReviewCommentState
all =
    [ PENDING, SUBMITTED ]


decoder : Json.Decode.Decoder PullRequestReviewCommentState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "SUBMITTED" ->
                        Json.Decode.succeed SUBMITTED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestReviewCommentState -> Json.Encode.Value
encode val =
    case val of
        PENDING ->
            Json.Encode.string "PENDING"

        SUBMITTED ->
            Json.Encode.string "SUBMITTED"


