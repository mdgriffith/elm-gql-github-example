module GitHub.Enum.VerifiableDomainOrderField exposing (VerifiableDomainOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, VerifiableDomainOrderField
-}


import Json.Decode
import Json.Encode


type VerifiableDomainOrderField
    = DOMAIN
    | CREATED_AT


all : List VerifiableDomainOrderField
all =
    [ DOMAIN, CREATED_AT ]


decoder : Json.Decode.Decoder VerifiableDomainOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "DOMAIN" ->
                        Json.Decode.succeed DOMAIN

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : VerifiableDomainOrderField -> Json.Encode.Value
encode val =
    case val of
        DOMAIN ->
            Json.Encode.string "DOMAIN"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


