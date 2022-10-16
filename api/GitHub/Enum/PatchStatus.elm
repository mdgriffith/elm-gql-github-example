module GitHub.Enum.PatchStatus exposing (PatchStatus(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PatchStatus
-}


import Json.Decode
import Json.Encode


type PatchStatus
    = ADDED
    | DELETED
    | RENAMED
    | COPIED
    | MODIFIED
    | CHANGED


all : List PatchStatus
all =
    [ ADDED, DELETED, RENAMED, COPIED, MODIFIED, CHANGED ]


decoder : Json.Decode.Decoder PatchStatus
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ADDED" ->
                        Json.Decode.succeed ADDED

                    "DELETED" ->
                        Json.Decode.succeed DELETED

                    "RENAMED" ->
                        Json.Decode.succeed RENAMED

                    "COPIED" ->
                        Json.Decode.succeed COPIED

                    "MODIFIED" ->
                        Json.Decode.succeed MODIFIED

                    "CHANGED" ->
                        Json.Decode.succeed CHANGED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PatchStatus -> Json.Encode.Value
encode val =
    case val of
        ADDED ->
            Json.Encode.string "ADDED"

        DELETED ->
            Json.Encode.string "DELETED"

        RENAMED ->
            Json.Encode.string "RENAMED"

        COPIED ->
            Json.Encode.string "COPIED"

        MODIFIED ->
            Json.Encode.string "MODIFIED"

        CHANGED ->
            Json.Encode.string "CHANGED"


