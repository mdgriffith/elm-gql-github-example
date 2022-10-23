module GitHub.Enum.DeploymentOrderField exposing (DeploymentOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DeploymentOrderField
-}


import Json.Decode
import Json.Encode


type DeploymentOrderField
    = CREATED_AT


all : List DeploymentOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder DeploymentOrderField
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


encode : DeploymentOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


