module GitHub.Enum.CommitContributionOrderField exposing (CommitContributionOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CommitContributionOrderField
-}


import Json.Decode
import Json.Encode


type CommitContributionOrderField
    = OCCURRED_AT
    | COMMIT_COUNT


all : List CommitContributionOrderField
all =
    [ OCCURRED_AT, COMMIT_COUNT ]


decoder : Json.Decode.Decoder CommitContributionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


