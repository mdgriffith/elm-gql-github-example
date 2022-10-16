module GitHub.Enum.OrganizationOrderField exposing (OrganizationOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrganizationOrderField
-}


import Json.Decode
import Json.Encode


type OrganizationOrderField
    = CREATED_AT
    | LOGIN


all : List OrganizationOrderField
all =
    [ CREATED_AT, LOGIN ]


decoder : Json.Decode.Decoder OrganizationOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrganizationOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        LOGIN ->
            Json.Encode.string "LOGIN"


