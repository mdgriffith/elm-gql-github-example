module GitHub.Enum.SponsorsActivityOrderField exposing (SponsorsActivityOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorsActivityOrderField
-}


import Json.Decode
import Json.Encode


type SponsorsActivityOrderField
    = TIMESTAMP


all : List SponsorsActivityOrderField
all =
    [ TIMESTAMP ]


decoder : Json.Decode.Decoder SponsorsActivityOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


