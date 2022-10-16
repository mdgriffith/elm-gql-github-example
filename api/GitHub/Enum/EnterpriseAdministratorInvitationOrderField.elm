module GitHub.Enum.EnterpriseAdministratorInvitationOrderField exposing (EnterpriseAdministratorInvitationOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseAdministratorInvitationOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseAdministratorInvitationOrderField
    = CREATED_AT


all : List EnterpriseAdministratorInvitationOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder EnterpriseAdministratorInvitationOrderField
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


encode : EnterpriseAdministratorInvitationOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


