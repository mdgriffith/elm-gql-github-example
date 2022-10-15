module GitHub.Input.AcceptEnterpriseAdministratorInvitationInput exposing (AcceptEnterpriseAdministratorInvitationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AcceptEnterpriseAdministratorInvitationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AcceptEnterpriseAdministratorInvitationInput =
    GitHub.Input.AcceptEnterpriseAdministratorInvitationInput


input :
    { invitationId : GitHub.Id } -> AcceptEnterpriseAdministratorInvitationInput
input requiredArgs =
    GraphQL.Engine.addField
        "invitationId"
        "ID!"
        (GitHub.id.encode requiredArgs.invitationId)
        (GraphQL.Engine.inputObject
            "AcceptEnterpriseAdministratorInvitationInput"
        )


clientMutationId :
    String
    -> AcceptEnterpriseAdministratorInvitationInput
    -> AcceptEnterpriseAdministratorInvitationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AcceptEnterpriseAdministratorInvitationInput
        -> AcceptEnterpriseAdministratorInvitationInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


