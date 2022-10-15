module GitHub.Input.ArchiveRepositoryInput exposing (ArchiveRepositoryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ArchiveRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ArchiveRepositoryInput =
    GitHub.Input.ArchiveRepositoryInput


input : { repositoryId : GitHub.Id } -> ArchiveRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.inputObject "ArchiveRepositoryInput")


clientMutationId : String -> ArchiveRepositoryInput -> ArchiveRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : ArchiveRepositoryInput -> ArchiveRepositoryInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


