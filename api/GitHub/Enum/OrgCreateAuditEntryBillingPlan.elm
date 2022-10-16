module GitHub.Enum.OrgCreateAuditEntryBillingPlan exposing (OrgCreateAuditEntryBillingPlan(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrgCreateAuditEntryBillingPlan
-}


import Json.Decode
import Json.Encode


type OrgCreateAuditEntryBillingPlan
    = FREE
    | BUSINESS
    | BUSINESS_PLUS
    | UNLIMITED
    | TIERED_PER_SEAT


all : List OrgCreateAuditEntryBillingPlan
all =
    [ FREE, BUSINESS, BUSINESS_PLUS, UNLIMITED, TIERED_PER_SEAT ]


decoder : Json.Decode.Decoder OrgCreateAuditEntryBillingPlan
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "FREE" ->
                        Json.Decode.succeed FREE

                    "BUSINESS" ->
                        Json.Decode.succeed BUSINESS

                    "BUSINESS_PLUS" ->
                        Json.Decode.succeed BUSINESS_PLUS

                    "UNLIMITED" ->
                        Json.Decode.succeed UNLIMITED

                    "TIERED_PER_SEAT" ->
                        Json.Decode.succeed TIERED_PER_SEAT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgCreateAuditEntryBillingPlan -> Json.Encode.Value
encode val =
    case val of
        FREE ->
            Json.Encode.string "FREE"

        BUSINESS ->
            Json.Encode.string "BUSINESS"

        BUSINESS_PLUS ->
            Json.Encode.string "BUSINESS_PLUS"

        UNLIMITED ->
            Json.Encode.string "UNLIMITED"

        TIERED_PER_SEAT ->
            Json.Encode.string "TIERED_PER_SEAT"


