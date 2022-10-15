module GitHub.Input.CreateEnvironmentInput exposing (CreateEnvironmentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateEnvironmentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateEnvironmentInput =
    GitHub.Input.CreateEnvironmentInput


input : { repositoryId : GitHub.Id, name : String } -> CreateEnvironmentInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "CreateEnvironmentInput")
        )


clientMutationId : String -> CreateEnvironmentInput -> CreateEnvironmentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : CreateEnvironmentInput -> CreateEnvironmentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


