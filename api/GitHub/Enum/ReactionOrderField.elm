module GitHub.Enum.ReactionOrderField exposing (ReactionOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ReactionOrderField
-}


import Json.Decode
import Json.Encode


type ReactionOrderField
    = CREATED_AT


list : List ReactionOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder ReactionOrderField
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


encode : ReactionOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


