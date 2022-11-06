module GitHub.Input.LinkProjectV2ToRepositoryInput exposing (LinkProjectV2ToRepositoryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, LinkProjectV2ToRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias LinkProjectV2ToRepositoryInput =
    GitHub.Input.LinkProjectV2ToRepositoryInput


input :
    { projectId : GitHub.Id, repositoryId : GitHub.Id }
    -> LinkProjectV2ToRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "repositoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.repositoryId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "LinkProjectV2ToRepositoryInput")
        )


clientMutationId :
    String -> LinkProjectV2ToRepositoryInput -> LinkProjectV2ToRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        LinkProjectV2ToRepositoryInput -> LinkProjectV2ToRepositoryInput
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


