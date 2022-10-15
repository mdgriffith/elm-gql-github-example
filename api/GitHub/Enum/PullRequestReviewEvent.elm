module GitHub.Enum.PullRequestReviewEvent exposing (PullRequestReviewEvent(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PullRequestReviewEvent
-}


import Json.Decode
import Json.Encode


type PullRequestReviewEvent
    = COMMENT
    | APPROVE
    | REQUEST_CHANGES
    | DISMISS


list : List PullRequestReviewEvent
list =
    [ COMMENT, APPROVE, REQUEST_CHANGES, DISMISS ]


decoder : Json.Decode.Decoder PullRequestReviewEvent
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "COMMENT" ->
                        Json.Decode.succeed COMMENT

                    "APPROVE" ->
                        Json.Decode.succeed APPROVE

                    "REQUEST_CHANGES" ->
                        Json.Decode.succeed REQUEST_CHANGES

                    "DISMISS" ->
                        Json.Decode.succeed DISMISS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PullRequestReviewEvent -> Json.Encode.Value
encode val =
    case val of
        COMMENT ->
            Json.Encode.string "COMMENT"

        APPROVE ->
            Json.Encode.string "APPROVE"

        REQUEST_CHANGES ->
            Json.Encode.string "REQUEST_CHANGES"

        DISMISS ->
            Json.Encode.string "DISMISS"


