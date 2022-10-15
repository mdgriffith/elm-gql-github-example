module GitHub.Enum.UserStatusOrderField exposing (UserStatusOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, UserStatusOrderField
-}


import Json.Decode
import Json.Encode


type UserStatusOrderField
    = UPDATED_AT


list : List UserStatusOrderField
list =
    [ UPDATED_AT ]


decoder : Json.Decode.Decoder UserStatusOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : UserStatusOrderField -> Json.Encode.Value
encode val =
    case val of
        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


