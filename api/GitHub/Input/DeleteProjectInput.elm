module GitHub.Input.DeleteProjectInput exposing (DeleteProjectInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteProjectInput =
    GitHub.Input.DeleteProjectInput


input : { projectId : GitHub.Id } -> DeleteProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "projectId"
        "ID!"
        (GitHub.id.encode requiredArgs.projectId)
        (GraphQL.Engine.inputObject "DeleteProjectInput")


clientMutationId : String -> DeleteProjectInput -> DeleteProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteProjectInput -> DeleteProjectInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


