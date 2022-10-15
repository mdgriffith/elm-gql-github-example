module GitHub.Enum.StarOrderField exposing (StarOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, StarOrderField
-}


import Json.Decode
import Json.Encode


type StarOrderField
    = STARRED_AT


list : List StarOrderField
list =
    [ STARRED_AT ]


decoder : Json.Decode.Decoder StarOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


