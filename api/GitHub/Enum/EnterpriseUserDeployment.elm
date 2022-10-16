module GitHub.Enum.EnterpriseUserDeployment exposing (EnterpriseUserDeployment(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseUserDeployment
-}


import Json.Decode
import Json.Encode


type EnterpriseUserDeployment
    = CLOUD
    | SERVER


all : List EnterpriseUserDeployment
all =
    [ CLOUD, SERVER ]


decoder : Json.Decode.Decoder EnterpriseUserDeployment
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CLOUD" ->
                        Json.Decode.succeed CLOUD

                    "SERVER" ->
                        Json.Decode.succeed SERVER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseUserDeployment -> Json.Encode.Value
encode val =
    case val of
        CLOUD ->
            Json.Encode.string "CLOUD"

        SERVER ->
            Json.Encode.string "SERVER"


