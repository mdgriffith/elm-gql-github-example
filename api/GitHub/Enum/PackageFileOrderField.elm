module GitHub.Enum.PackageFileOrderField exposing (PackageFileOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PackageFileOrderField
-}


import Json.Decode
import Json.Encode


type PackageFileOrderField
    = CREATED_AT


all : List PackageFileOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder PackageFileOrderField
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


encode : PackageFileOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


