module GitHub.Enum.LanguageOrderField exposing (LanguageOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, LanguageOrderField
-}


import Json.Decode
import Json.Encode


type LanguageOrderField
    = SIZE


list : List LanguageOrderField
list =
    [ SIZE ]


decoder : Json.Decode.Decoder LanguageOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "SIZE" ->
                        Json.Decode.succeed SIZE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : LanguageOrderField -> Json.Encode.Value
encode val =
    case val of
        SIZE ->
            Json.Encode.string "SIZE"


