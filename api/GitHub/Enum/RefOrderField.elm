module GitHub.Enum.RefOrderField exposing (RefOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RefOrderField
-}


import Json.Decode
import Json.Encode


type RefOrderField
    = TAG_COMMIT_DATE
    | ALPHABETICAL


list : List RefOrderField
list =
    [ TAG_COMMIT_DATE, ALPHABETICAL ]


decoder : Json.Decode.Decoder RefOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "TAG_COMMIT_DATE" ->
                        Json.Decode.succeed TAG_COMMIT_DATE

                    "ALPHABETICAL" ->
                        Json.Decode.succeed ALPHABETICAL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RefOrderField -> Json.Encode.Value
encode val =
    case val of
        TAG_COMMIT_DATE ->
            Json.Encode.string "TAG_COMMIT_DATE"

        ALPHABETICAL ->
            Json.Encode.string "ALPHABETICAL"


