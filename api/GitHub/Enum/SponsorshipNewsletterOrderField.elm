module GitHub.Enum.SponsorshipNewsletterOrderField exposing (SponsorshipNewsletterOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SponsorshipNewsletterOrderField
-}


import Json.Decode
import Json.Encode


type SponsorshipNewsletterOrderField
    = CREATED_AT


list : List SponsorshipNewsletterOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder SponsorshipNewsletterOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorshipNewsletterOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


