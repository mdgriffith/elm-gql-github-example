module GitHub.Enum.ProjectColumnPurpose exposing (ProjectColumnPurpose(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectColumnPurpose
-}


import Json.Decode
import Json.Encode


type ProjectColumnPurpose
    = TODO
    | IN_PROGRESS
    | DONE


all : List ProjectColumnPurpose
all =
    [ TODO, IN_PROGRESS, DONE ]


decoder : Json.Decode.Decoder ProjectColumnPurpose
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "TODO" ->
                        Json.Decode.succeed TODO

                    "IN_PROGRESS" ->
                        Json.Decode.succeed IN_PROGRESS

                    "DONE" ->
                        Json.Decode.succeed DONE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectColumnPurpose -> Json.Encode.Value
encode val =
    case val of
        TODO ->
            Json.Encode.string "TODO"

        IN_PROGRESS ->
            Json.Encode.string "IN_PROGRESS"

        DONE ->
            Json.Encode.string "DONE"


