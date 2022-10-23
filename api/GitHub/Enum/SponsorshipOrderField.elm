module GitHub.Enum.SponsorshipOrderField exposing (SponsorshipOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorshipOrderField
-}


import Json.Decode
import Json.Encode


type SponsorshipOrderField
    = CREATED_AT


all : List SponsorshipOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder SponsorshipOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorshipOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


