module GitHub.Input.CancelEnterpriseAdminInvitationInput exposing (CancelEnterpriseAdminInvitationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CancelEnterpriseAdminInvitationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CancelEnterpriseAdminInvitationInput =
    GitHub.Input.CancelEnterpriseAdminInvitationInput


input : { invitationId : GitHub.Id } -> CancelEnterpriseAdminInvitationInput
input requiredArgs =
    GraphQL.Engine.addField
        "invitationId"
        "ID!"
        (GitHub.id.encode requiredArgs.invitationId)
        (GraphQL.Engine.inputObject "CancelEnterpriseAdminInvitationInput")


clientMutationId :
    String
    -> CancelEnterpriseAdminInvitationInput
    -> CancelEnterpriseAdminInvitationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        CancelEnterpriseAdminInvitationInput
        -> CancelEnterpriseAdminInvitationInput
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


