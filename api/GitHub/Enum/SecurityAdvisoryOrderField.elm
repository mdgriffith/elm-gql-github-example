module GitHub.Enum.SecurityAdvisoryOrderField exposing (SecurityAdvisoryOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SecurityAdvisoryOrderField
-}


import Json.Decode
import Json.Encode


type SecurityAdvisoryOrderField
    = PUBLISHED_AT
    | UPDATED_AT


list : List SecurityAdvisoryOrderField
list =
    [ PUBLISHED_AT, UPDATED_AT ]


decoder : Json.Decode.Decoder SecurityAdvisoryOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PUBLISHED_AT" ->
                        Json.Decode.succeed PUBLISHED_AT

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SecurityAdvisoryOrderField -> Json.Encode.Value
encode val =
    case val of
        PUBLISHED_AT ->
            Json.Encode.string "PUBLISHED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


