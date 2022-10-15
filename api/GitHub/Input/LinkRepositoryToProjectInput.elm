module GitHub.Input.LinkRepositoryToProjectInput exposing (LinkRepositoryToProjectInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, LinkRepositoryToProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias LinkRepositoryToProjectInput =
    GitHub.Input.LinkRepositoryToProjectInput


input :
    { projectId : GitHub.Id, repositoryId : GitHub.Id }
    -> LinkRepositoryToProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "LinkRepositoryToProjectInput")
        )


clientMutationId :
    String -> LinkRepositoryToProjectInput -> LinkRepositoryToProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        LinkRepositoryToProjectInput -> LinkRepositoryToProjectInput
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


