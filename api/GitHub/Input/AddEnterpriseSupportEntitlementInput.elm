module GitHub.Input.AddEnterpriseSupportEntitlementInput exposing (AddEnterpriseSupportEntitlementInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddEnterpriseSupportEntitlementInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddEnterpriseSupportEntitlementInput =
    GitHub.Input.AddEnterpriseSupportEntitlementInput


input :
    { enterpriseId : GitHub.Id, login : String }
    -> AddEnterpriseSupportEntitlementInput
input requiredArgs =
    GraphQL.Engine.addField
        "login"
        "String!"
        (Json.Encode.string requiredArgs.login)
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject "AddEnterpriseSupportEntitlementInput")
        )


clientMutationId :
    String
    -> AddEnterpriseSupportEntitlementInput
    -> AddEnterpriseSupportEntitlementInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AddEnterpriseSupportEntitlementInput
        -> AddEnterpriseSupportEntitlementInput
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


