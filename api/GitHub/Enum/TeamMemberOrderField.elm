module GitHub.Enum.TeamMemberOrderField exposing (TeamMemberOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamMemberOrderField
-}


import Json.Decode
import Json.Encode


type TeamMemberOrderField
    = LOGIN
    | CREATED_AT


list : List TeamMemberOrderField
list =
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


