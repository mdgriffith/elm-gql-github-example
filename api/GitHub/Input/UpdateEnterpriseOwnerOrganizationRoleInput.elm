module GitHub.Input.UpdateEnterpriseOwnerOrganizationRoleInput exposing (UpdateEnterpriseOwnerOrganizationRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseOwnerOrganizationRoleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.RoleInOrganization
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseOwnerOrganizationRoleInput =
    GitHub.Input.UpdateEnterpriseOwnerOrganizationRoleInput


input :
    { enterpriseId : GitHub.Id
    , organizationId : GitHub.Id
    , organizationRole : GitHub.Enum.RoleInOrganization.RoleInOrganization
    }
    -> UpdateEnterpriseOwnerOrganizationRoleInput
input requiredArgs =
    GraphQL.Engine.addField
        "organizationRole"
        "RoleInOrganization!"
        (GitHub.Enum.RoleInOrganization.encode requiredArgs.organizationRole)
        (GraphQL.Engine.addField
            "organizationId"
            "ID!"
            (GitHub.id.encode requiredArgs.organizationId)
            (GraphQL.Engine.addField
                "enterpriseId"
                "ID!"
                (GitHub.id.encode requiredArgs.enterpriseId)
                (GraphQL.Engine.inputObject
                    "UpdateEnterpriseOwnerOrganizationRoleInput"
                )
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseOwnerOrganizationRoleInput
    -> UpdateEnterpriseOwnerOrganizationRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseOwnerOrganizationRoleInput
        -> UpdateEnterpriseOwnerOrganizationRoleInput
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


