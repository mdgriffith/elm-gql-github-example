module GitHub.Enum.SponsorsTierOrderField exposing (SponsorsTierOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorsTierOrderField
-}


import Json.Decode
import Json.Encode


type SponsorsTierOrderField
    = CREATED_AT
    | MONTHLY_PRICE_IN_CENTS


all : List SponsorsTierOrderField
all =
    [ CREATED_AT, MONTHLY_PRICE_IN_CENTS ]


decoder : Json.Decode.Decoder SponsorsTierOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                "MONTHLY_PRICE_IN_CENTS" ->
                    Json.Decode.succeed MONTHLY_PRICE_IN_CENTS

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorsTierOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        MONTHLY_PRICE_IN_CENTS ->
            Json.Encode.string "MONTHLY_PRICE_IN_CENTS"


