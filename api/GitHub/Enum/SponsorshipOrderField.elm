module GitHub.Enum.SponsorshipOrderField exposing (SponsorshipOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SponsorshipOrderField
-}


import Json.Decode
import Json.Encode


type SponsorshipOrderField
    = CREATED_AT


list : List SponsorshipOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder SponsorshipOrderField
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


encode : SponsorshipOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


