module GitHub.Input.CreateCheckRunInput exposing (CreateCheckRunInput, actions, clientMutationId, completedAt, conclusion, detailsUrl, externalId, input, null, output, startedAt, status)

{-| 
## Creating an input

@docs input, CreateCheckRunInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, actions, output, completedAt, conclusion, startedAt, status, externalId, detailsUrl
-}


import GitHub
import GitHub.Enum.CheckConclusionState
import GitHub.Enum.RequestableCheckStatusState
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias CreateCheckRunInput =
    GitHub.Input.CreateCheckRunInput


input :
    { repositoryId : GitHub.Id, name : String, headSha : GitHub.GitObjectID }
    -> CreateCheckRunInput
input requiredArgs =
    GraphQL.Engine.addField
        "headSha"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.headSha)
        (GraphQL.Engine.addField
            "name"
            "String!"
            (Json.Encode.string requiredArgs.name)
            (GraphQL.Engine.addField
                "repositoryId"
                "ID!"
                (GitHub.id.encode requiredArgs.repositoryId)
                (GraphQL.Engine.inputObject "CreateCheckRunInput")
            )
        )


detailsUrl : GitHub.Uri -> CreateCheckRunInput -> CreateCheckRunInput
detailsUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "detailsUrl"
        "URI"
        (GitHub.uri.encode newArg_)
        inputObj_


externalId : String -> CreateCheckRunInput -> CreateCheckRunInput
externalId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "externalId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


status :
    GitHub.Enum.RequestableCheckStatusState.RequestableCheckStatusState
    -> CreateCheckRunInput
    -> CreateCheckRunInput
status newArg_ inputObj_ =
    GraphQL.Engine.addField
        "status"
        "RequestableCheckStatusState"
        (GitHub.Enum.RequestableCheckStatusState.encode newArg_)
        inputObj_


startedAt : GitHub.DateTime -> CreateCheckRunInput -> CreateCheckRunInput
startedAt newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startedAt"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


conclusion :
    GitHub.Enum.CheckConclusionState.CheckConclusionState
    -> CreateCheckRunInput
    -> CreateCheckRunInput
conclusion newArg_ inputObj_ =
    GraphQL.Engine.addField
        "conclusion"
        "CheckConclusionState"
        (GitHub.Enum.CheckConclusionState.encode newArg_)
        inputObj_


completedAt : GitHub.DateTime -> CreateCheckRunInput -> CreateCheckRunInput
completedAt newArg_ inputObj_ =
    GraphQL.Engine.addField
        "completedAt"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


output :
    GitHub.Input.CheckRunOutput -> CreateCheckRunInput -> CreateCheckRunInput
output newArg_ inputObj_ =
    GraphQL.Engine.addField
        "output"
        "CheckRunOutput"
        (GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


actions :
    List GitHub.Input.CheckRunAction
    -> CreateCheckRunInput
    -> CreateCheckRunInput
actions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "actions"
        "[CheckRunAction!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


clientMutationId : String -> CreateCheckRunInput -> CreateCheckRunInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { detailsUrl : CreateCheckRunInput -> CreateCheckRunInput
    , externalId : CreateCheckRunInput -> CreateCheckRunInput
    , status : CreateCheckRunInput -> CreateCheckRunInput
    , startedAt : CreateCheckRunInput -> CreateCheckRunInput
    , conclusion : CreateCheckRunInput -> CreateCheckRunInput
    , completedAt : CreateCheckRunInput -> CreateCheckRunInput
    , output : CreateCheckRunInput -> CreateCheckRunInput
    , actions : CreateCheckRunInput -> CreateCheckRunInput
    , clientMutationId : CreateCheckRunInput -> CreateCheckRunInput
    }
null =
    { detailsUrl =
        \inputObj ->
            GraphQL.Engine.addField "detailsUrl" "URI" Json.Encode.null inputObj
    , externalId =
        \inputObj ->
            GraphQL.Engine.addField
                "externalId"
                "String"
                Json.Encode.null
                inputObj
    , status =
        \inputObj ->
            GraphQL.Engine.addField
                "status"
                "RequestableCheckStatusState"
                Json.Encode.null
                inputObj
    , startedAt =
        \inputObj ->
            GraphQL.Engine.addField
                "startedAt"
                "DateTime"
                Json.Encode.null
                inputObj
    , conclusion =
        \inputObj ->
            GraphQL.Engine.addField
                "conclusion"
                "CheckConclusionState"
                Json.Encode.null
                inputObj
    , completedAt =
        \inputObj ->
            GraphQL.Engine.addField
                "completedAt"
                "DateTime"
                Json.Encode.null
                inputObj
    , output =
        \inputObj ->
            GraphQL.Engine.addField
                "output"
                "CheckRunOutput"
                Json.Encode.null
                inputObj
    , actions =
        \inputObj ->
            GraphQL.Engine.addField
                "actions"
                "[CheckRunAction!]"
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


