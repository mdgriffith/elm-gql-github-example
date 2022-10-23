module GitHub.Enum.WorkflowRunOrderField exposing (WorkflowRunOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, WorkflowRunOrderField
-}


import Json.Decode
import Json.Encode


type WorkflowRunOrderField
    = CREATED_AT


all : List WorkflowRunOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder WorkflowRunOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


