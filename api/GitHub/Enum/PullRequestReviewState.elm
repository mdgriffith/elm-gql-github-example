module GitHub.Enum.PullRequestReviewState exposing (PullRequestReviewState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PullRequestReviewState
-}


import Json.Decode
import Json.Encode


type PullRequestReviewState
    = PENDING
    | COMMENTED
    | APPROVED
    | CHANGES_REQUESTED
    | DISMISSED


all : List PullRequestReviewState
all =
    [ PENDING, COMMENTED, APPROVED, CHANGES_REQUESTED, DISMISSED ]


decoder : Json.Decode.Decoder PullRequestReviewState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PENDING" ->
                        Json.Decode.succeed PENDING

                    "COMMENTED" ->
                        Json.Decode.succeed COMMENTED

                    "APPROVED" ->
                        Json.Decode.succeed APPROVED

                    "CHANGES_REQUESTED" ->
                        Json.Decode.succeed CHANGES_REQUESTED

                    "DISMISSED" ->
                        Json.Decode.succeed DISMISSED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestReviewState -> Json.Encode.Value
encode val =
    case val of
        PENDING ->
            Json.Encode.string "PENDING"

        COMMENTED ->
            Json.Encode.string "COMMENTED"

        APPROVED ->
            Json.Encode.string "APPROVED"

        CHANGES_REQUESTED ->
            Json.Encode.string "CHANGES_REQUESTED"

        DISMISSED ->
            Json.Encode.string "DISMISSED"


