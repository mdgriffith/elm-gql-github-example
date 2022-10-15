module GitHub.Input.CreateMigrationSourceInput exposing (CreateMigrationSourceInput, accessToken, clientMutationId, githubPat, input, null)

{-| 
## Creating an input

@docs input, CreateMigrationSourceInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, githubPat, accessToken
-}


import GitHub
import GitHub.Enum.MigrationSourceType
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateMigrationSourceInput =
    GitHub.Input.CreateMigrationSourceInput


input :
    { name : String
    , url : String
    , type_ : GitHub.Enum.MigrationSourceType.MigrationSourceType
    , ownerId : GitHub.Id
    }
    -> CreateMigrationSourceInput
input requiredArgs =
    GraphQL.Engine.addField
        "ownerId"
        "ID!"
        (GitHub.id.encode requiredArgs.ownerId)
        (GraphQL.Engine.addField
            "type"
            "MigrationSourceType!"
            (GitHub.Enum.MigrationSourceType.encode requiredArgs.type_)
            (GraphQL.Engine.addField
                "url"
                "String!"
                (Json.Encode.string requiredArgs.url)
                (GraphQL.Engine.addField
                    "name"
                    "String!"
                    (Json.Encode.string requiredArgs.name)
                    (GraphQL.Engine.inputObject "CreateMigrationSourceInput")
                )
            )
        )


accessToken : String -> CreateMigrationSourceInput -> CreateMigrationSourceInput
accessToken newArg_ inputObj_ =
    GraphQL.Engine.addField
        "accessToken"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


githubPat : String -> CreateMigrationSourceInput -> CreateMigrationSourceInput
githubPat newArg_ inputObj_ =
    GraphQL.Engine.addField
        "githubPat"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> CreateMigrationSourceInput -> CreateMigrationSourceInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { accessToken : CreateMigrationSourceInput -> CreateMigrationSourceInput
    , githubPat : CreateMigrationSourceInput -> CreateMigrationSourceInput
    , clientMutationId :
        CreateMigrationSourceInput -> CreateMigrationSourceInput
    }
null =
    { accessToken =
        \inputObj ->
            GraphQL.Engine.addField
                "accessToken"
                "String"
                Json.Encode.null
                inputObj
    , githubPat =
        \inputObj ->
            GraphQL.Engine.addField
                "githubPat"
                "String"
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


