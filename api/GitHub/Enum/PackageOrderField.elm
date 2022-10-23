module GitHub.Enum.PackageOrderField exposing (PackageOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PackageOrderField
-}


import Json.Decode
import Json.Encode


type PackageOrderField
    = CREATED_AT


all : List PackageOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder PackageOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PackageOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


