module GitHub.Enum.LabelOrderField exposing (LabelOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, LabelOrderField
-}


import Json.Decode
import Json.Encode


type LabelOrderField
    = NAME
    | CREATED_AT


all : List LabelOrderField
all =
    [ NAME, CREATED_AT ]


decoder : Json.Decode.Decoder LabelOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "NAME" ->
                        Json.Decode.succeed NAME

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : LabelOrderField -> Json.Encode.Value
encode val =
    case val of
        NAME ->
            Json.Encode.string "NAME"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


