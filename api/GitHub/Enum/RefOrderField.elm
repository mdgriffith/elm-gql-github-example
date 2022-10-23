module GitHub.Enum.RefOrderField exposing (RefOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RefOrderField
-}


import Json.Decode
import Json.Encode


type RefOrderField
    = TAG_COMMIT_DATE
    | ALPHABETICAL


all : List RefOrderField
all =
    [ TAG_COMMIT_DATE, ALPHABETICAL ]


decoder : Json.Decode.Decoder RefOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


