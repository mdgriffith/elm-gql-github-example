module GitHub.Enum.EnterpriseServerUserAccountEmailOrderField exposing (EnterpriseServerUserAccountEmailOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseServerUserAccountEmailOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseServerUserAccountEmailOrderField
    = EMAIL


all : List EnterpriseServerUserAccountEmailOrderField
all =
    [ EMAIL ]


decoder : Json.Decode.Decoder EnterpriseServerUserAccountEmailOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "EMAIL" ->
                    Json.Decode.succeed EMAIL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseServerUserAccountEmailOrderField -> Json.Encode.Value
encode val =
    case val of
        EMAIL ->
            Json.Encode.string "EMAIL"


