module GitHub.Enum.DiscussionPollOptionOrderField exposing (DiscussionPollOptionOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DiscussionPollOptionOrderField
-}


import Json.Decode
import Json.Encode


type DiscussionPollOptionOrderField
    = AUTHORED_ORDER
    | VOTE_COUNT


list : List DiscussionPollOptionOrderField
list =
    [ AUTHORED_ORDER, VOTE_COUNT ]


decoder : Json.Decode.Decoder DiscussionPollOptionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "AUTHORED_ORDER" ->
                        Json.Decode.succeed AUTHORED_ORDER

                    "VOTE_COUNT" ->
                        Json.Decode.succeed VOTE_COUNT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DiscussionPollOptionOrderField -> Json.Encode.Value
encode val =
    case val of
        AUTHORED_ORDER ->
            Json.Encode.string "AUTHORED_ORDER"

        VOTE_COUNT ->
            Json.Encode.string "VOTE_COUNT"


