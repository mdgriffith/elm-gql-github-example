module GitHub.Input.CloneTemplateRepositoryInput exposing (CloneTemplateRepositoryInput, clientMutationId, description, includeAllBranches, input, null)

{-| 
## Creating an input

@docs input, CloneTemplateRepositoryInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, includeAllBranches, description
-}


import GitHub
import GitHub.Enum.RepositoryVisibility
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CloneTemplateRepositoryInput =
    GitHub.Input.CloneTemplateRepositoryInput


input :
    { repositoryId : GitHub.Id
    , name : String
    , ownerId : GitHub.Id
    , visibility : GitHub.Enum.RepositoryVisibility.RepositoryVisibility
    }
    -> CloneTemplateRepositoryInput
input requiredArgs =
    GraphQL.Engine.addField
        "visibility"
        "RepositoryVisibility!"
        (GitHub.Enum.RepositoryVisibility.encode requiredArgs.visibility)
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.addField
                "name"
                "String!"
                (Json.Encode.string requiredArgs.name)
                (GraphQL.Engine.addField
                    "repositoryId"
                    "ID!"
                    (GitHub.id.encode requiredArgs.repositoryId)
                    (GraphQL.Engine.inputObject "CloneTemplateRepositoryInput")
                )
            )
        )


description :
    String -> CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
description newArg_ inputObj_ =
    GraphQL.Engine.addField
        "description"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


includeAllBranches :
    Bool -> CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
includeAllBranches newArg_ inputObj_ =
    GraphQL.Engine.addField
        "includeAllBranches"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { description : CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
    , includeAllBranches :
        CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
    , clientMutationId :
        CloneTemplateRepositoryInput -> CloneTemplateRepositoryInput
    }
null =
    { description =
        \inputObj ->
            GraphQL.Engine.addField
                "description"
                "String"
                Json.Encode.null
                inputObj
    , includeAllBranches =
        \inputObj ->
            GraphQL.Engine.addField
                "includeAllBranches"
                "Boolean"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


