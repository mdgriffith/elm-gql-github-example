module GitHub.Input.InviteEnterpriseAdminInput exposing (InviteEnterpriseAdminInput, clientMutationId, email, input, invitee, null, role)

{-| 
## Creating an input

@docs input, InviteEnterpriseAdminInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, role, email, invitee
-}


import GitHub
import GitHub.Enum.EnterpriseAdministratorRole
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias InviteEnterpriseAdminInput =
    GitHub.Input.InviteEnterpriseAdminInput


input : { enterpriseId : GitHub.Id } -> InviteEnterpriseAdminInput
input requiredArgs =
    GraphQL.Engine.addField
        "enterpriseId"
        "ID!"
        (GitHub.id.encode requiredArgs.enterpriseId)
        (GraphQL.Engine.inputObject "InviteEnterpriseAdminInput")


invitee : String -> InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
invitee newArg_ inputObj_ =
    GraphQL.Engine.addField
        "invitee"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


email : String -> InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
email newArg_ inputObj_ =
    GraphQL.Engine.addField
        "email"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


role :
    GitHub.Enum.EnterpriseAdministratorRole.EnterpriseAdministratorRole
    -> InviteEnterpriseAdminInput
    -> InviteEnterpriseAdminInput
role newArg_ inputObj_ =
    GraphQL.Engine.addField
        "role"
        "EnterpriseAdministratorRole"
        (GitHub.Enum.EnterpriseAdministratorRole.encode newArg_)
        inputObj_


clientMutationId :
    String -> InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { invitee : InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
    , email : InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
    , role : InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
    , clientMutationId :
        InviteEnterpriseAdminInput -> InviteEnterpriseAdminInput
    }
null =
    { invitee =
        \inputObj ->
            GraphQL.Engine.addField "invitee" "String" Json.Encode.null inputObj
    , email =
        \inputObj ->
            GraphQL.Engine.addField "email" "String" Json.Encode.null inputObj
    , role =
        \inputObj ->
            GraphQL.Engine.addField
                "role"
                "EnterpriseAdministratorRole"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


