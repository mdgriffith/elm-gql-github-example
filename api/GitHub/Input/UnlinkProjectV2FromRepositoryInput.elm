module GitHub.Input.UnlinkProjectV2FromRepositoryInput exposing (UnlinkProjectV2FromRepositoryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnlinkProjectV2FromRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnlinkProjectV2FromRepositoryInput =
    GitHub.Input.UnlinkProjectV2FromRepositoryInput


input :
    { projectId : GitHub.Id, repositoryId : GitHub.Id }
    -> UnlinkProjectV2FromRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "UnlinkProjectV2FromRepositoryInput")
        )


clientMutationId :
    String
    -> UnlinkProjectV2FromRepositoryInput
    -> UnlinkProjectV2FromRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnlinkProjectV2FromRepositoryInput -> UnlinkProjectV2FromRepositoryInput
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


