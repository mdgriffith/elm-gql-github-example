module GitHub.Enum.ProjectCardState exposing (ProjectCardState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectCardState
-}


import Json.Decode
import Json.Encode


type ProjectCardState
    = CONTENT_ONLY
    | NOTE_ONLY
    | REDACTED


all : List ProjectCardState
all =
    [ CONTENT_ONLY, NOTE_ONLY, REDACTED ]


decoder : Json.Decode.Decoder ProjectCardState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CONTENT_ONLY" ->
                        Json.Decode.succeed CONTENT_ONLY

                    "NOTE_ONLY" ->
                        Json.Decode.succeed NOTE_ONLY

                    "REDACTED" ->
                        Json.Decode.succeed REDACTED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectCardState -> Json.Encode.Value
encode val =
    case val of
        CONTENT_ONLY ->
            Json.Encode.string "CONTENT_ONLY"

        NOTE_ONLY ->
            Json.Encode.string "NOTE_ONLY"

        REDACTED ->
            Json.Encode.string "REDACTED"


