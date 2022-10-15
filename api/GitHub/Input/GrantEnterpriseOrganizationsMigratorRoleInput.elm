module GitHub.Input.GrantEnterpriseOrganizationsMigratorRoleInput exposing (GrantEnterpriseOrganizationsMigratorRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, GrantEnterpriseOrganizationsMigratorRoleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias GrantEnterpriseOrganizationsMigratorRoleInput =
    GitHub.Input.GrantEnterpriseOrganizationsMigratorRoleInput


input :
    { enterpriseId : GitHub.Id, login : String }
    -> GrantEnterpriseOrganizationsMigratorRoleInput
input requiredArgs =
    GraphQL.Engine.addField
        "login"
        "String!"
        (Json.Encode.string requiredArgs.login)
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "GrantEnterpriseOrganizationsMigratorRoleInput"
            )
        )


clientMutationId :
    String
    -> GrantEnterpriseOrganizationsMigratorRoleInput
    -> GrantEnterpriseOrganizationsMigratorRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        GrantEnterpriseOrganizationsMigratorRoleInput
        -> GrantEnterpriseOrganizationsMigratorRoleInput
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


