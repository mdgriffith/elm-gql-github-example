module GitHub.Enum.EnterpriseMemberOrderField exposing (EnterpriseMemberOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseMemberOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseMemberOrderField
    = LOGIN
    | CREATED_AT


list : List EnterpriseMemberOrderField
list =
    [ LOGIN, CREATED_AT ]


decoder : Json.Decode.Decoder EnterpriseMemberOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseMemberOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


