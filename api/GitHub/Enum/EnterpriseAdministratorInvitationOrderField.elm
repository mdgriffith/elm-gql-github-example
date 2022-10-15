module GitHub.Enum.EnterpriseAdministratorInvitationOrderField exposing (EnterpriseAdministratorInvitationOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseAdministratorInvitationOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseAdministratorInvitationOrderField
    = CREATED_AT


list : List EnterpriseAdministratorInvitationOrderField
list =
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


