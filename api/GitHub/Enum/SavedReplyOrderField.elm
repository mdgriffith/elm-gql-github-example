module GitHub.Enum.SavedReplyOrderField exposing (SavedReplyOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SavedReplyOrderField
-}


import Json.Decode
import Json.Encode


type SavedReplyOrderField
    = UPDATED_AT


list : List SavedReplyOrderField
list =
    [ UPDATED_AT ]


decoder : Json.Decode.Decoder SavedReplyOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SavedReplyOrderField -> Json.Encode.Value
encode val =
    case val of
        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


