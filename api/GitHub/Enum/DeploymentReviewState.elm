module GitHub.Enum.DeploymentReviewState exposing (DeploymentReviewState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DeploymentReviewState
-}


import Json.Decode
import Json.Encode


type DeploymentReviewState
    = APPROVED
    | REJECTED


all : List DeploymentReviewState
all =
    [ APPROVED, REJECTED ]


decoder : Json.Decode.Decoder DeploymentReviewState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "APPROVED" ->
                    Json.Decode.succeed APPROVED

                "REJECTED" ->
                    Json.Decode.succeed REJECTED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DeploymentReviewState -> Json.Encode.Value
encode val =
    case val of
        APPROVED ->
            Json.Encode.string "APPROVED"

        REJECTED ->
            Json.Encode.string "REJECTED"


