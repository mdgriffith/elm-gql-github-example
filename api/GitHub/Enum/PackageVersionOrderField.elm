module GitHub.Enum.PackageVersionOrderField exposing (PackageVersionOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PackageVersionOrderField
-}


import Json.Decode
import Json.Encode


type PackageVersionOrderField
    = CREATED_AT


all : List PackageVersionOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder PackageVersionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PackageVersionOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


