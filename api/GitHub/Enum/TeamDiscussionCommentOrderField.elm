module GitHub.Enum.TeamDiscussionCommentOrderField exposing (TeamDiscussionCommentOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamDiscussionCommentOrderField
-}


import Json.Decode
import Json.Encode


type TeamDiscussionCommentOrderField
    = NUMBER


list : List TeamDiscussionCommentOrderField
list =
    [ NUMBER ]


decoder : Json.Decode.Decoder TeamDiscussionCommentOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "NUMBER" ->
                        Json.Decode.succeed NUMBER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamDiscussionCommentOrderField -> Json.Encode.Value
encode val =
    case val of
        NUMBER ->
            Json.Encode.string "NUMBER"


