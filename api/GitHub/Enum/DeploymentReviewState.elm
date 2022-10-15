module GitHub.Enum.DeploymentReviewState exposing (DeploymentReviewState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DeploymentReviewState
-}


import Json.Decode
import Json.Encode


type DeploymentReviewState
    = APPROVED
    | REJECTED


list : List DeploymentReviewState
list =
    [ APPROVED, REJECTED ]


decoder : Json.Decode.Decoder DeploymentReviewState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


