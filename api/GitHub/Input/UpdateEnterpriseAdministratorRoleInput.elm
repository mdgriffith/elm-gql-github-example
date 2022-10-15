module GitHub.Input.UpdateEnterpriseAdministratorRoleInput exposing (UpdateEnterpriseAdministratorRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseAdministratorRoleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseAdministratorRole
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseAdministratorRoleInput =
    GitHub.Input.UpdateEnterpriseAdministratorRoleInput


input :
    { enterpriseId : GitHub.Id
    , login : String
    , role : GitHub.Enum.EnterpriseAdministratorRole.EnterpriseAdministratorRole
    }
    -> UpdateEnterpriseAdministratorRoleInput
input requiredArgs =
    GraphQL.Engine.addField
        "role"
        "EnterpriseAdministratorRole!"
        (GitHub.Enum.EnterpriseAdministratorRole.encode requiredArgs.role)
        (GraphQL.Engine.addField
            "login"
            "String!"
            (Json.Encode.string requiredArgs.login)
            (GraphQL.Engine.addField
                "enterpriseId"
                "ID!"
                (GitHub.id.encode requiredArgs.enterpriseId)
                (GraphQL.Engine.inputObject
                    "UpdateEnterpriseAdministratorRoleInput"
                )
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseAdministratorRoleInput
    -> UpdateEnterpriseAdministratorRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseAdministratorRoleInput
        -> UpdateEnterpriseAdministratorRoleInput
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


