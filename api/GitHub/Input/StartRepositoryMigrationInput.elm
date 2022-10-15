module GitHub.Input.StartRepositoryMigrationInput exposing (StartRepositoryMigrationInput, clientMutationId, continueOnError, gitArchiveUrl, githubPat, input, lockSource, metadataArchiveUrl, null, skipReleases, targetRepoVisibility)

{-| 
## Creating an input

@docs input, StartRepositoryMigrationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, lockSource, targetRepoVisibility, skipReleases, githubPat, metadataArchiveUrl, gitArchiveUrl, continueOnError
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias StartRepositoryMigrationInput =
    GitHub.Input.StartRepositoryMigrationInput


input :
    { sourceId : GitHub.Id
    , ownerId : GitHub.Id
    , sourceRepositoryUrl : GitHub.Uri
    , repositoryName : String
    , accessToken : String
    }
    -> StartRepositoryMigrationInput
input requiredArgs =
    GraphQL.Engine.addField
        "accessToken"
        "String!"
        (Json.Encode.string requiredArgs.accessToken)
        (GraphQL.Engine.addField
            "repositoryName"
            "String!"
            (Json.Encode.string requiredArgs.repositoryName)
            (GraphQL.Engine.addField
                "sourceRepositoryUrl"
                "URI!"
                (GitHub.uri.encode requiredArgs.sourceRepositoryUrl)
                (GraphQL.Engine.addField
                    "ownerId"
                    "ID!"
                    (GitHub.id.encode requiredArgs.ownerId)
                    (GraphQL.Engine.addField
                        "sourceId"
                        "ID!"
                        (GitHub.id.encode requiredArgs.sourceId)
                        (GraphQL.Engine.inputObject
                            "StartRepositoryMigrationInput"
                        )
                    )
                )
            )
        )


continueOnError :
    Bool -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
continueOnError newArg_ inputObj_ =
    GraphQL.Engine.addField
        "continueOnError"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


gitArchiveUrl :
    String -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
gitArchiveUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "gitArchiveUrl"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


metadataArchiveUrl :
    String -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
metadataArchiveUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "metadataArchiveUrl"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


githubPat :
    String -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
githubPat newArg_ inputObj_ =
    GraphQL.Engine.addField
        "githubPat"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


skipReleases :
    Bool -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
skipReleases newArg_ inputObj_ =
    GraphQL.Engine.addField
        "skipReleases"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


targetRepoVisibility :
    String -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
targetRepoVisibility newArg_ inputObj_ =
    GraphQL.Engine.addField
        "targetRepoVisibility"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


lockSource :
    Bool -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
lockSource newArg_ inputObj_ =
    GraphQL.Engine.addField
        "lockSource"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> StartRepositoryMigrationInput -> StartRepositoryMigrationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { continueOnError :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , gitArchiveUrl :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , metadataArchiveUrl :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , githubPat : StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , skipReleases :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , targetRepoVisibility :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , lockSource :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    , clientMutationId :
        StartRepositoryMigrationInput -> StartRepositoryMigrationInput
    }
null =
    { continueOnError =
        \inputObj ->
            GraphQL.Engine.addField
                "continueOnError"
                "Boolean"
                Json.Encode.null
                inputObj
    , gitArchiveUrl =
        \inputObj ->
            GraphQL.Engine.addField
                "gitArchiveUrl"
                "String"
                Json.Encode.null
                inputObj
    , metadataArchiveUrl =
        \inputObj ->
            GraphQL.Engine.addField
                "metadataArchiveUrl"
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
    , skipReleases =
        \inputObj ->
            GraphQL.Engine.addField
                "skipReleases"
                "Boolean"
                Json.Encode.null
                inputObj
    , targetRepoVisibility =
        \inputObj ->
            GraphQL.Engine.addField
                "targetRepoVisibility"
                "String"
                Json.Encode.null
                inputObj
    , lockSource =
        \inputObj ->
            GraphQL.Engine.addField
                "lockSource"
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


