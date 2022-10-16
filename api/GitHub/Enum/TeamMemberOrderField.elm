module GitHub.Enum.TeamMemberOrderField exposing (TeamMemberOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamMemberOrderField
-}


import Json.Decode
import Json.Encode


type TeamMemberOrderField
    = LOGIN
    | CREATED_AT


all : List TeamMemberOrderField
all =
    [ LOGIN, CREATED_AT ]


decoder : Json.Decode.Decoder TeamMemberOrderField
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


encode : TeamMemberOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


