module GitHub.Enum.VerifiableDomainOrderField exposing (VerifiableDomainOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, VerifiableDomainOrderField
-}


import Json.Decode
import Json.Encode


type VerifiableDomainOrderField
    = DOMAIN
    | CREATED_AT


list : List VerifiableDomainOrderField
list =
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


