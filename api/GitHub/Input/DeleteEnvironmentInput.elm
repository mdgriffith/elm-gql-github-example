module GitHub.Input.DeleteEnvironmentInput exposing (DeleteEnvironmentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteEnvironmentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteEnvironmentInput =
    GitHub.Input.DeleteEnvironmentInput


input : { id : GitHub.Id } -> DeleteEnvironmentInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteEnvironmentInput")


clientMutationId : String -> DeleteEnvironmentInput -> DeleteEnvironmentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteEnvironmentInput -> DeleteEnvironmentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


