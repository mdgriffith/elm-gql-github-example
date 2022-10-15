module GitHub.Input.RerequestCheckSuiteInput exposing (RerequestCheckSuiteInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RerequestCheckSuiteInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RerequestCheckSuiteInput =
    GitHub.Input.RerequestCheckSuiteInput


input :
    { repositoryId : GitHub.Id, checkSuiteId : GitHub.Id }
    -> RerequestCheckSuiteInput
input requiredArgs =
    GraphQL.Engine.addField
        "checkSuiteId"
        "ID!"
        (GitHub.id.encode requiredArgs.checkSuiteId)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "RerequestCheckSuiteInput")
        )


clientMutationId :
    String -> RerequestCheckSuiteInput -> RerequestCheckSuiteInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : RerequestCheckSuiteInput -> RerequestCheckSuiteInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


