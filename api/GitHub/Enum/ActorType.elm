module GitHub.Enum.ActorType exposing (ActorType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ActorType
-}


import Json.Decode
import Json.Encode


type ActorType
    = USER
    | TEAM


list : List ActorType
list =
    [ USER, TEAM ]


decoder : Json.Decode.Decoder ActorType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "USER" ->
                        Json.Decode.succeed USER

                    "TEAM" ->
                        Json.Decode.succeed TEAM

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ActorType -> Json.Encode.Value
encode val =
    case val of
        USER ->
            Json.Encode.string "USER"

        TEAM ->
            Json.Encode.string "TEAM"


