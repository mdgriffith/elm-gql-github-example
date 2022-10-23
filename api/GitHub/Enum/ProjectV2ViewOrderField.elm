module GitHub.Enum.ProjectV2ViewOrderField exposing (ProjectV2ViewOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2ViewOrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2ViewOrderField
    = POSITION
    | CREATED_AT
    | NAME


all : List ProjectV2ViewOrderField
all =
    [ POSITION, CREATED_AT, NAME ]


decoder : Json.Decode.Decoder ProjectV2ViewOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "POSITION" ->
                    Json.Decode.succeed POSITION

                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                "NAME" ->
                    Json.Decode.succeed NAME

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2ViewOrderField -> Json.Encode.Value
encode val =
    case val of
        POSITION ->
            Json.Encode.string "POSITION"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        NAME ->
            Json.Encode.string "NAME"


