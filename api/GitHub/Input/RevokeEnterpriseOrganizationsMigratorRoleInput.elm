module GitHub.Input.RevokeEnterpriseOrganizationsMigratorRoleInput exposing (RevokeEnterpriseOrganizationsMigratorRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RevokeEnterpriseOrganizationsMigratorRoleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RevokeEnterpriseOrganizationsMigratorRoleInput =
    GitHub.Input.RevokeEnterpriseOrganizationsMigratorRoleInput


input :
    { enterpriseId : GitHub.Id, login : String }
    -> RevokeEnterpriseOrganizationsMigratorRoleInput
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
                "RevokeEnterpriseOrganizationsMigratorRoleInput"
            )
        )


clientMutationId :
    String
    -> RevokeEnterpriseOrganizationsMigratorRoleInput
    -> RevokeEnterpriseOrganizationsMigratorRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RevokeEnterpriseOrganizationsMigratorRoleInput
        -> RevokeEnterpriseOrganizationsMigratorRoleInput
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


