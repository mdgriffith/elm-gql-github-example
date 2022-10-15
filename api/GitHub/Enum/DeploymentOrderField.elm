module GitHub.Enum.DeploymentOrderField exposing (DeploymentOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DeploymentOrderField
-}


import Json.Decode
import Json.Encode


type DeploymentOrderField
    = CREATED_AT


list : List DeploymentOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder DeploymentOrderField
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


encode : DeploymentOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


