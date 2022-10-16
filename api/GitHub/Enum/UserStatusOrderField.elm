module GitHub.Enum.UserStatusOrderField exposing (UserStatusOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, UserStatusOrderField
-}


import Json.Decode
import Json.Encode


type UserStatusOrderField
    = UPDATED_AT


all : List UserStatusOrderField
all =
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


