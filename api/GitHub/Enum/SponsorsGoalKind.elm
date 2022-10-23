module GitHub.Enum.SponsorsGoalKind exposing (SponsorsGoalKind(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorsGoalKind
-}


import Json.Decode
import Json.Encode


type SponsorsGoalKind
    = TOTAL_SPONSORS_COUNT
    | MONTHLY_SPONSORSHIP_AMOUNT


all : List SponsorsGoalKind
all =
    [ TOTAL_SPONSORS_COUNT, MONTHLY_SPONSORSHIP_AMOUNT ]


decoder : Json.Decode.Decoder SponsorsGoalKind
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "TOTAL_SPONSORS_COUNT" ->
                    Json.Decode.succeed TOTAL_SPONSORS_COUNT

                "MONTHLY_SPONSORSHIP_AMOUNT" ->
                    Json.Decode.succeed MONTHLY_SPONSORSHIP_AMOUNT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorsGoalKind -> Json.Encode.Value
encode val =
    case val of
        TOTAL_SPONSORS_COUNT ->
            Json.Encode.string "TOTAL_SPONSORS_COUNT"

        MONTHLY_SPONSORSHIP_AMOUNT ->
            Json.Encode.string "MONTHLY_SPONSORSHIP_AMOUNT"


