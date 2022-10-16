module GitHub.Enum.ProjectV2ItemType exposing (ProjectV2ItemType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2ItemType
-}


import Json.Decode
import Json.Encode


type ProjectV2ItemType
    = ISSUE
    | PULL_REQUEST
    | DRAFT_ISSUE
    | REDACTED


all : List ProjectV2ItemType
all =
    [ ISSUE, PULL_REQUEST, DRAFT_ISSUE, REDACTED ]


decoder : Json.Decode.Decoder ProjectV2ItemType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ISSUE" ->
                        Json.Decode.succeed ISSUE

                    "PULL_REQUEST" ->
                        Json.Decode.succeed PULL_REQUEST

                    "DRAFT_ISSUE" ->
                        Json.Decode.succeed DRAFT_ISSUE

                    "REDACTED" ->
                        Json.Decode.succeed REDACTED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2ItemType -> Json.Encode.Value
encode val =
    case val of
        ISSUE ->
            Json.Encode.string "ISSUE"

        PULL_REQUEST ->
            Json.Encode.string "PULL_REQUEST"

        DRAFT_ISSUE ->
            Json.Encode.string "DRAFT_ISSUE"

        REDACTED ->
            Json.Encode.string "REDACTED"


