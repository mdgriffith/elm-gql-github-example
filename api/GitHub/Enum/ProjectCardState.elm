module GitHub.Enum.ProjectCardState exposing (ProjectCardState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ProjectCardState
-}


import Json.Decode
import Json.Encode


type ProjectCardState
    = CONTENT_ONLY
    | NOTE_ONLY
    | REDACTED


list : List ProjectCardState
list =
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


