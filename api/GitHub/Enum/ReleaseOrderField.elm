module GitHub.Enum.ReleaseOrderField exposing (ReleaseOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ReleaseOrderField
-}


import Json.Decode
import Json.Encode


type ReleaseOrderField
    = CREATED_AT
    | NAME


all : List ReleaseOrderField
all =
    [ CREATED_AT, NAME ]


decoder : Json.Decode.Decoder ReleaseOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                "NAME" ->
                    Json.Decode.succeed NAME

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ReleaseOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        NAME ->
            Json.Encode.string "NAME"


