module GitHub.Enum.StarOrderField exposing (StarOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, StarOrderField
-}


import Json.Decode
import Json.Encode


type StarOrderField
    = STARRED_AT


all : List StarOrderField
all =
    [ STARRED_AT ]


decoder : Json.Decode.Decoder StarOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "STARRED_AT" ->
                    Json.Decode.succeed STARRED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : StarOrderField -> Json.Encode.Value
encode val =
    case val of
        STARRED_AT ->
            Json.Encode.string "STARRED_AT"


