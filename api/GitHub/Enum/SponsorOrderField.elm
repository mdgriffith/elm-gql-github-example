module GitHub.Enum.SponsorOrderField exposing (SponsorOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorOrderField
-}


import Json.Decode
import Json.Encode


type SponsorOrderField
    = LOGIN
    | RELEVANCE


all : List SponsorOrderField
all =
    [ LOGIN, RELEVANCE ]


decoder : Json.Decode.Decoder SponsorOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    "RELEVANCE" ->
                        Json.Decode.succeed RELEVANCE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"

        RELEVANCE ->
            Json.Encode.string "RELEVANCE"


