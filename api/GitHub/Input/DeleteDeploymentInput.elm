module GitHub.Input.DeleteDeploymentInput exposing (DeleteDeploymentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteDeploymentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteDeploymentInput =
    GitHub.Input.DeleteDeploymentInput


input : { id : GitHub.Id } -> DeleteDeploymentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteDeploymentInput")


clientMutationId : String -> DeleteDeploymentInput -> DeleteDeploymentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteDeploymentInput -> DeleteDeploymentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


