module GitHub.Enum.WorkflowRunOrderField exposing (WorkflowRunOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, WorkflowRunOrderField
-}


import Json.Decode
import Json.Encode


type WorkflowRunOrderField
    = CREATED_AT


list : List WorkflowRunOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder WorkflowRunOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : WorkflowRunOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


