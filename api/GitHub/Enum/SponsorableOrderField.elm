module GitHub.Enum.SponsorableOrderField exposing (SponsorableOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SponsorableOrderField
-}


import Json.Decode
import Json.Encode


type SponsorableOrderField
    = LOGIN


list : List SponsorableOrderField
list =
    [ LOGIN ]


decoder : Json.Decode.Decoder SponsorableOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorableOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"


