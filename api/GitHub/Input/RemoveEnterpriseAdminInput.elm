module GitHub.Input.RemoveEnterpriseAdminInput exposing (RemoveEnterpriseAdminInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveEnterpriseAdminInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveEnterpriseAdminInput =
    GitHub.Input.RemoveEnterpriseAdminInput


input :
    { enterpriseId : GitHub.Id, login : String } -> RemoveEnterpriseAdminInput
input requiredArgs =
    GraphQL.Engine.addField
        "login"
        "String!"
        (Json.Encode.string requiredArgs.login)
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject "RemoveEnterpriseAdminInput")
        )


clientMutationId :
    String -> RemoveEnterpriseAdminInput -> RemoveEnterpriseAdminInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveEnterpriseAdminInput -> RemoveEnterpriseAdminInput
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


