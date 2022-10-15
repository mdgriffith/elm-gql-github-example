module GitHub.Enum.TeamRole exposing (TeamRole(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamRole
-}


import Json.Decode
import Json.Encode


type TeamRole
    = ADMIN
    | MEMBER


list : List TeamRole
list =
    [ ADMIN, MEMBER ]


decoder : Json.Decode.Decoder TeamRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ADMIN" ->
                        Json.Decode.succeed ADMIN

                    "MEMBER" ->
                        Json.Decode.succeed MEMBER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamRole -> Json.Encode.Value
encode val =
    case val of
        ADMIN ->
            Json.Encode.string "ADMIN"

        MEMBER ->
            Json.Encode.string "MEMBER"


