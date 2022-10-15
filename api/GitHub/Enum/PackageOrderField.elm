module GitHub.Enum.PackageOrderField exposing (PackageOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, PackageOrderField
-}


import Json.Decode
import Json.Encode


type PackageOrderField
    = CREATED_AT


list : List PackageOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder PackageOrderField
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


encode : PackageOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


