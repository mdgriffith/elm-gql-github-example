module GitHub.Enum.ProjectTemplate exposing (ProjectTemplate(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectTemplate
-}


import Json.Decode
import Json.Encode


type ProjectTemplate
    = BASIC_KANBAN
    | AUTOMATED_KANBAN_V2
    | AUTOMATED_REVIEWS_KANBAN
    | BUG_TRIAGE


all : List ProjectTemplate
all =
    [ BASIC_KANBAN, AUTOMATED_KANBAN_V2, AUTOMATED_REVIEWS_KANBAN, BUG_TRIAGE ]


decoder : Json.Decode.Decoder ProjectTemplate
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "BASIC_KANBAN" ->
                    Json.Decode.succeed BASIC_KANBAN

                "AUTOMATED_KANBAN_V2" ->
                    Json.Decode.succeed AUTOMATED_KANBAN_V2

                "AUTOMATED_REVIEWS_KANBAN" ->
                    Json.Decode.succeed AUTOMATED_REVIEWS_KANBAN

                "BUG_TRIAGE" ->
                    Json.Decode.succeed BUG_TRIAGE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectTemplate -> Json.Encode.Value
encode val =
    case val of
        BASIC_KANBAN ->
            Json.Encode.string "BASIC_KANBAN"

        AUTOMATED_KANBAN_V2 ->
            Json.Encode.string "AUTOMATED_KANBAN_V2"

        AUTOMATED_REVIEWS_KANBAN ->
            Json.Encode.string "AUTOMATED_REVIEWS_KANBAN"

        BUG_TRIAGE ->
            Json.Encode.string "BUG_TRIAGE"


