module GitHub.Enum.CheckAnnotationLevel exposing (CheckAnnotationLevel(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, CheckAnnotationLevel
-}


import Json.Decode
import Json.Encode


type CheckAnnotationLevel
    = FAILURE
    | NOTICE
    | WARNING


list : List CheckAnnotationLevel
list =
    [ FAILURE, NOTICE, WARNING ]


decoder : Json.Decode.Decoder CheckAnnotationLevel
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "FAILURE" ->
                        Json.Decode.succeed FAILURE

                    "NOTICE" ->
                        Json.Decode.succeed NOTICE

                    "WARNING" ->
                        Json.Decode.succeed WARNING

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CheckAnnotationLevel -> Json.Encode.Value
encode val =
    case val of
        FAILURE ->
            Json.Encode.string "FAILURE"

        NOTICE ->
            Json.Encode.string "NOTICE"

        WARNING ->
            Json.Encode.string "WARNING"


