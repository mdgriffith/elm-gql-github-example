module GitHub.Enum.CommentAuthorAssociation exposing (CommentAuthorAssociation(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CommentAuthorAssociation
-}


import Json.Decode
import Json.Encode


type CommentAuthorAssociation
    = MEMBER
    | OWNER
    | MANNEQUIN
    | COLLABORATOR
    | CONTRIBUTOR
    | FIRST_TIME_CONTRIBUTOR
    | FIRST_TIMER
    | NONE


all : List CommentAuthorAssociation
all =
    [ MEMBER
    , OWNER
    , MANNEQUIN
    , COLLABORATOR
    , CONTRIBUTOR
    , FIRST_TIME_CONTRIBUTOR
    , FIRST_TIMER
    , NONE
    ]


decoder : Json.Decode.Decoder CommentAuthorAssociation
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MEMBER" ->
                        Json.Decode.succeed MEMBER

                    "OWNER" ->
                        Json.Decode.succeed OWNER

                    "MANNEQUIN" ->
                        Json.Decode.succeed MANNEQUIN

                    "COLLABORATOR" ->
                        Json.Decode.succeed COLLABORATOR

                    "CONTRIBUTOR" ->
                        Json.Decode.succeed CONTRIBUTOR

                    "FIRST_TIME_CONTRIBUTOR" ->
                        Json.Decode.succeed FIRST_TIME_CONTRIBUTOR

                    "FIRST_TIMER" ->
                        Json.Decode.succeed FIRST_TIMER

                    "NONE" ->
                        Json.Decode.succeed NONE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CommentAuthorAssociation -> Json.Encode.Value
encode val =
    case val of
        MEMBER ->
            Json.Encode.string "MEMBER"

        OWNER ->
            Json.Encode.string "OWNER"

        MANNEQUIN ->
            Json.Encode.string "MANNEQUIN"

        COLLABORATOR ->
            Json.Encode.string "COLLABORATOR"

        CONTRIBUTOR ->
            Json.Encode.string "CONTRIBUTOR"

        FIRST_TIME_CONTRIBUTOR ->
            Json.Encode.string "FIRST_TIME_CONTRIBUTOR"

        FIRST_TIMER ->
            Json.Encode.string "FIRST_TIMER"

        NONE ->
            Json.Encode.string "NONE"


