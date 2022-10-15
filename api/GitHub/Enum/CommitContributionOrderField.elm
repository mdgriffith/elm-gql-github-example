module GitHub.Enum.CommitContributionOrderField exposing (CommitContributionOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, CommitContributionOrderField
-}


import Json.Decode
import Json.Encode


type CommitContributionOrderField
    = OCCURRED_AT
    | COMMIT_COUNT


list : List CommitContributionOrderField
list =
    [ OCCURRED_AT, COMMIT_COUNT ]


decoder : Json.Decode.Decoder CommitContributionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OCCURRED_AT" ->
                        Json.Decode.succeed OCCURRED_AT

                    "COMMIT_COUNT" ->
                        Json.Decode.succeed COMMIT_COUNT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CommitContributionOrderField -> Json.Encode.Value
encode val =
    case val of
        OCCURRED_AT ->
            Json.Encode.string "OCCURRED_AT"

        COMMIT_COUNT ->
            Json.Encode.string "COMMIT_COUNT"


