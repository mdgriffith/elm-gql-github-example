module GitHub.Enum.SponsorsActivityOrderField exposing (SponsorsActivityOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SponsorsActivityOrderField
-}


import Json.Decode
import Json.Encode


type SponsorsActivityOrderField
    = TIMESTAMP


list : List SponsorsActivityOrderField
list =
    [ TIMESTAMP ]


decoder : Json.Decode.Decoder SponsorsActivityOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "TIMESTAMP" ->
                        Json.Decode.succeed TIMESTAMP

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorsActivityOrderField -> Json.Encode.Value
encode val =
    case val of
        TIMESTAMP ->
            Json.Encode.string "TIMESTAMP"


