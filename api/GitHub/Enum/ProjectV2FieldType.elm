module GitHub.Enum.ProjectV2FieldType exposing (ProjectV2FieldType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectV2FieldType
-}


import Json.Decode
import Json.Encode


type ProjectV2FieldType
    = ASSIGNEES
    | LINKED_PULL_REQUESTS
    | REVIEWERS
    | LABELS
    | MILESTONE
    | REPOSITORY
    | TITLE
    | TEXT
    | SINGLE_SELECT
    | NUMBER
    | DATE
    | ITERATION
    | TRACKS


list : List ProjectV2FieldType
list =
    [ ASSIGNEES
    , LINKED_PULL_REQUESTS
    , REVIEWERS
    , LABELS
    , MILESTONE
    , REPOSITORY
    , TITLE
    , TEXT
    , SINGLE_SELECT
    , NUMBER
    , DATE
    , ITERATION
    , TRACKS
    ]


decoder : Json.Decode.Decoder ProjectV2FieldType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ASSIGNEES" ->
                        Json.Decode.succeed ASSIGNEES

                    "LINKED_PULL_REQUESTS" ->
                        Json.Decode.succeed LINKED_PULL_REQUESTS

                    "REVIEWERS" ->
                        Json.Decode.succeed REVIEWERS

                    "LABELS" ->
                        Json.Decode.succeed LABELS

                    "MILESTONE" ->
                        Json.Decode.succeed MILESTONE

                    "REPOSITORY" ->
                        Json.Decode.succeed REPOSITORY

                    "TITLE" ->
                        Json.Decode.succeed TITLE

                    "TEXT" ->
                        Json.Decode.succeed TEXT

                    "SINGLE_SELECT" ->
                        Json.Decode.succeed SINGLE_SELECT

                    "NUMBER" ->
                        Json.Decode.succeed NUMBER

                    "DATE" ->
                        Json.Decode.succeed DATE

                    "ITERATION" ->
                        Json.Decode.succeed ITERATION

                    "TRACKS" ->
                        Json.Decode.succeed TRACKS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2FieldType -> Json.Encode.Value
encode val =
    case val of
        ASSIGNEES ->
            Json.Encode.string "ASSIGNEES"

        LINKED_PULL_REQUESTS ->
            Json.Encode.string "LINKED_PULL_REQUESTS"

        REVIEWERS ->
            Json.Encode.string "REVIEWERS"

        LABELS ->
            Json.Encode.string "LABELS"

        MILESTONE ->
            Json.Encode.string "MILESTONE"

        REPOSITORY ->
            Json.Encode.string "REPOSITORY"

        TITLE ->
            Json.Encode.string "TITLE"

        TEXT ->
            Json.Encode.string "TEXT"

        SINGLE_SELECT ->
            Json.Encode.string "SINGLE_SELECT"

        NUMBER ->
            Json.Encode.string "NUMBER"

        DATE ->
            Json.Encode.string "DATE"

        ITERATION ->
            Json.Encode.string "ITERATION"

        TRACKS ->
            Json.Encode.string "TRACKS"


