module GitHub.Input.UpdateCheckRunInput exposing (UpdateCheckRunInput, actions, clientMutationId, completedAt, conclusion, detailsUrl, externalId, input, name, null, output, startedAt, status)

{-| 
## Creating an input

@docs input, UpdateCheckRunInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, actions, output, completedAt, conclusion, startedAt, status, externalId, detailsUrl, name
-}


import GitHub
import GitHub.Enum.CheckConclusionState
import GitHub.Enum.RequestableCheckStatusState
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias UpdateCheckRunInput =
    GitHub.Input.UpdateCheckRunInput


input :
    { repositoryId : GitHub.Id, checkRunId : GitHub.Id } -> UpdateCheckRunInput
input requiredArgs =
    GraphQL.Engine.addField
        "checkRunId"
        "ID!"
        (GitHub.id.encode requiredArgs.checkRunId)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "UpdateCheckRunInput")
        )


name : String -> UpdateCheckRunInput -> UpdateCheckRunInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


detailsUrl : GitHub.Uri -> UpdateCheckRunInput -> UpdateCheckRunInput
detailsUrl newArg_ inputObj_ =
    GraphQL.Engine.addField
        "detailsUrl"
        "URI"
        (GitHub.uri.encode newArg_)
        inputObj_


externalId : String -> UpdateCheckRunInput -> UpdateCheckRunInput
externalId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "externalId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


status :
    GitHub.Enum.RequestableCheckStatusState.RequestableCheckStatusState
    -> UpdateCheckRunInput
    -> UpdateCheckRunInput
status newArg_ inputObj_ =
    GraphQL.Engine.addField
        "status"
        "RequestableCheckStatusState"
        (GitHub.Enum.RequestableCheckStatusState.encode newArg_)
        inputObj_


startedAt : GitHub.DateTime -> UpdateCheckRunInput -> UpdateCheckRunInput
startedAt newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startedAt"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


conclusion :
    GitHub.Enum.CheckConclusionState.CheckConclusionState
    -> UpdateCheckRunInput
    -> UpdateCheckRunInput
conclusion newArg_ inputObj_ =
    GraphQL.Engine.addField
        "conclusion"
        "CheckConclusionState"
        (GitHub.Enum.CheckConclusionState.encode newArg_)
        inputObj_


completedAt : GitHub.DateTime -> UpdateCheckRunInput -> UpdateCheckRunInput
completedAt newArg_ inputObj_ =
    GraphQL.Engine.addField
        "completedAt"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


output :
    GitHub.Input.CheckRunOutput -> UpdateCheckRunInput -> UpdateCheckRunInput
output newArg_ inputObj_ =
    GraphQL.Engine.addField
        "output"
        "CheckRunOutput"
        (GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


actions :
    List GitHub.Input.CheckRunAction
    -> UpdateCheckRunInput
    -> UpdateCheckRunInput
actions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "actions"
        "[CheckRunAction!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


clientMutationId : String -> UpdateCheckRunInput -> UpdateCheckRunInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : UpdateCheckRunInput -> UpdateCheckRunInput
    , detailsUrl : UpdateCheckRunInput -> UpdateCheckRunInput
    , externalId : UpdateCheckRunInput -> UpdateCheckRunInput
    , status : UpdateCheckRunInput -> UpdateCheckRunInput
    , startedAt : UpdateCheckRunInput -> UpdateCheckRunInput
    , conclusion : UpdateCheckRunInput -> UpdateCheckRunInput
    , completedAt : UpdateCheckRunInput -> UpdateCheckRunInput
    , output : UpdateCheckRunInput -> UpdateCheckRunInput
    , actions : UpdateCheckRunInput -> UpdateCheckRunInput
    , clientMutationId : UpdateCheckRunInput -> UpdateCheckRunInput
    }
null =
    { name =
        \inputObj ->
            GraphQL.Engine.addField "name" "String" Json.Encode.null inputObj
    , detailsUrl =
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


