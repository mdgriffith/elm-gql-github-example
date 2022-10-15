module GitHub.Input.UpdateTeamsRepositoryInput exposing (UpdateTeamsRepositoryInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateTeamsRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.RepositoryPermission
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateTeamsRepositoryInput =
    GitHub.Input.UpdateTeamsRepositoryInput


input :
    { repositoryId : GitHub.Id
    , teamIds : List GitHub.Id
    , permission : GitHub.Enum.RepositoryPermission.RepositoryPermission
    }
    -> UpdateTeamsRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "permission"
        "RepositoryPermission!"
        (GitHub.Enum.RepositoryPermission.encode requiredArgs.permission)
        (GraphQL.Engine.addField
            "teamIds"
            "[ID!]!"
            (Json.Encode.list GitHub.id.encode requiredArgs.teamIds)
            (GraphQL.Engine.addField
                "repositoryId"
                "ID!"
                (GitHub.id.encode requiredArgs.repositoryId)
                (GraphQL.Engine.inputObject "UpdateTeamsRepositoryInput")
            )
        )


clientMutationId :
    String -> UpdateTeamsRepositoryInput -> UpdateTeamsRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateTeamsRepositoryInput -> UpdateTeamsRepositoryInput
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


