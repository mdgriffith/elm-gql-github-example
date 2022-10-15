module GitHub.Enum.OperationType exposing (OperationType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OperationType
-}


import Json.Decode
import Json.Encode


type OperationType
    = ACCESS
    | AUTHENTICATION
    | CREATE
    | MODIFY
    | REMOVE
    | RESTORE
    | TRANSFER


list : List OperationType
list =
    [ ACCESS, AUTHENTICATION, CREATE, MODIFY, REMOVE, RESTORE, TRANSFER ]


decoder : Json.Decode.Decoder OperationType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ACCESS" ->
                        Json.Decode.succeed ACCESS

                    "AUTHENTICATION" ->
                        Json.Decode.succeed AUTHENTICATION

                    "CREATE" ->
                        Json.Decode.succeed CREATE

                    "MODIFY" ->
                        Json.Decode.succeed MODIFY

                    "REMOVE" ->
                        Json.Decode.succeed REMOVE

                    "RESTORE" ->
                        Json.Decode.succeed RESTORE

                    "TRANSFER" ->
                        Json.Decode.succeed TRANSFER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OperationType -> Json.Encode.Value
encode val =
    case val of
        ACCESS ->
            Json.Encode.string "ACCESS"

        AUTHENTICATION ->
            Json.Encode.string "AUTHENTICATION"

        CREATE ->
            Json.Encode.string "CREATE"

        MODIFY ->
            Json.Encode.string "MODIFY"

        REMOVE ->
            Json.Encode.string "REMOVE"

        RESTORE ->
            Json.Encode.string "RESTORE"

        TRANSFER ->
            Json.Encode.string "TRANSFER"


