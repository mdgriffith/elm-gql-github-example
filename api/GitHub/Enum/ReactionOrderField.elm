module GitHub.Enum.ReactionOrderField exposing (ReactionOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ReactionOrderField
-}


import Json.Decode
import Json.Encode


type ReactionOrderField
    = CREATED_AT


all : List ReactionOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder ReactionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


