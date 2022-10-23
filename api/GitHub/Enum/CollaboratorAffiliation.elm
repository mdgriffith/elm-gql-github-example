module GitHub.Enum.CollaboratorAffiliation exposing (CollaboratorAffiliation(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CollaboratorAffiliation
-}


import Json.Decode
import Json.Encode


type CollaboratorAffiliation
    = OUTSIDE
    | DIRECT
    | ALL


all : List CollaboratorAffiliation
all =
    [ OUTSIDE, DIRECT, ALL ]


decoder : Json.Decode.Decoder CollaboratorAffiliation
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "OUTSIDE" ->
                    Json.Decode.succeed OUTSIDE

                "DIRECT" ->
                    Json.Decode.succeed DIRECT

                "ALL" ->
                    Json.Decode.succeed ALL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CollaboratorAffiliation -> Json.Encode.Value
encode val =
    case val of
        OUTSIDE ->
            Json.Encode.string "OUTSIDE"

        DIRECT ->
            Json.Encode.string "DIRECT"

        ALL ->
            Json.Encode.string "ALL"


