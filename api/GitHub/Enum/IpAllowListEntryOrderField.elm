module GitHub.Enum.IpAllowListEntryOrderField exposing (IpAllowListEntryOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IpAllowListEntryOrderField
-}


import Json.Decode
import Json.Encode


type IpAllowListEntryOrderField
    = CREATED_AT
    | ALLOW_LIST_VALUE


all : List IpAllowListEntryOrderField
all =
    [ CREATED_AT, ALLOW_LIST_VALUE ]


decoder : Json.Decode.Decoder IpAllowListEntryOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "ALLOW_LIST_VALUE" ->
                        Json.Decode.succeed ALLOW_LIST_VALUE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IpAllowListEntryOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        ALLOW_LIST_VALUE ->
            Json.Encode.string "ALLOW_LIST_VALUE"


