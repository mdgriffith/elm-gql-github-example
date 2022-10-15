module GitHub.Enum.DiscussionOrderField exposing (DiscussionOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DiscussionOrderField
-}


import Json.Decode
import Json.Encode


type DiscussionOrderField
    = CREATED_AT
    | UPDATED_AT


list : List DiscussionOrderField
list =
    [ CREATED_AT, UPDATED_AT ]


decoder : Json.Decode.Decoder DiscussionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


