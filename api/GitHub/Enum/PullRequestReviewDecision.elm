module GitHub.Enum.PullRequestReviewDecision exposing (PullRequestReviewDecision(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestReviewDecision
-}


import Json.Decode
import Json.Encode


type PullRequestReviewDecision
    = CHANGES_REQUESTED
    | APPROVED
    | REVIEW_REQUIRED


all : List PullRequestReviewDecision
all =
    [ CHANGES_REQUESTED, APPROVED, REVIEW_REQUIRED ]


decoder : Json.Decode.Decoder PullRequestReviewDecision
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CHANGES_REQUESTED" ->
                    Json.Decode.succeed CHANGES_REQUESTED

                "APPROVED" ->
                    Json.Decode.succeed APPROVED

                "REVIEW_REQUIRED" ->
                    Json.Decode.succeed REVIEW_REQUIRED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestReviewDecision -> Json.Encode.Value
encode val =
    case val of
        CHANGES_REQUESTED ->
            Json.Encode.string "CHANGES_REQUESTED"

        APPROVED ->
            Json.Encode.string "APPROVED"

        REVIEW_REQUIRED ->
            Json.Encode.string "REVIEW_REQUIRED"


