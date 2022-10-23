module GitHub.Enum.DiscussionOrderField exposing (DiscussionOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DiscussionOrderField
-}


import Json.Decode
import Json.Encode


type DiscussionOrderField
    = CREATED_AT
    | UPDATED_AT


all : List DiscussionOrderField
all =
    [ CREATED_AT, UPDATED_AT ]


decoder : Json.Decode.Decoder DiscussionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                "UPDATED_AT" ->
                    Json.Decode.succeed UPDATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DiscussionOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


