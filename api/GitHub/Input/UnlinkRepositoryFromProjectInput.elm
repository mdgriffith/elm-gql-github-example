module GitHub.Input.UnlinkRepositoryFromProjectInput exposing (UnlinkRepositoryFromProjectInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnlinkRepositoryFromProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnlinkRepositoryFromProjectInput =
    GitHub.Input.UnlinkRepositoryFromProjectInput


input :
    { projectId : GitHub.Id, repositoryId : GitHub.Id }
    -> UnlinkRepositoryFromProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "UnlinkRepositoryFromProjectInput")
        )


clientMutationId :
    String
    -> UnlinkRepositoryFromProjectInput
    -> UnlinkRepositoryFromProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnlinkRepositoryFromProjectInput -> UnlinkRepositoryFromProjectInput
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


