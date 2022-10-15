module GitHub.Input.UnarchiveRepositoryInput exposing (UnarchiveRepositoryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnarchiveRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnarchiveRepositoryInput =
    GitHub.Input.UnarchiveRepositoryInput


input : { repositoryId : GitHub.Id } -> UnarchiveRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.inputObject "UnarchiveRepositoryInput")


clientMutationId :
    String -> UnarchiveRepositoryInput -> UnarchiveRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : UnarchiveRepositoryInput -> UnarchiveRepositoryInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


