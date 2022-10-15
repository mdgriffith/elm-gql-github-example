module GitHub.Input.AddPullRequestReviewThreadInput exposing (AddPullRequestReviewThreadInput, clientMutationId, input, null, pullRequestId, pullRequestReviewId, side, startLine, startSide)

{-| 
## Creating an input

@docs input, AddPullRequestReviewThreadInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, startSide, startLine, side, pullRequestReviewId, pullRequestId
-}


import GitHub
import GitHub.Enum.DiffSide
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddPullRequestReviewThreadInput =
    GitHub.Input.AddPullRequestReviewThreadInput


input :
    { path : String, body : String, line : Int }
    -> AddPullRequestReviewThreadInput
input requiredArgs =
    GraphQL.Engine.addField
        "line"
        "Int!"
        (Json.Encode.int requiredArgs.line)
        (GraphQL.Engine.addField
            "body"
            "String!"
            (Json.Encode.string requiredArgs.body)
            (GraphQL.Engine.addField
                "path"
                "String!"
                (Json.Encode.string requiredArgs.path)
                (GraphQL.Engine.inputObject "AddPullRequestReviewThreadInput")
            )
        )


pullRequestId :
    GitHub.Id
    -> AddPullRequestReviewThreadInput
    -> AddPullRequestReviewThreadInput
pullRequestId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


pullRequestReviewId :
    GitHub.Id
    -> AddPullRequestReviewThreadInput
    -> AddPullRequestReviewThreadInput
pullRequestReviewId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pullRequestReviewId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


side :
    GitHub.Enum.DiffSide.DiffSide
    -> AddPullRequestReviewThreadInput
    -> AddPullRequestReviewThreadInput
side newArg_ inputObj_ =
    GraphQL.Engine.addField
        "side"
        "DiffSide"
        (GitHub.Enum.DiffSide.encode newArg_)
        inputObj_


startLine :
    Int -> AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
startLine newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startLine"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


startSide :
    GitHub.Enum.DiffSide.DiffSide
    -> AddPullRequestReviewThreadInput
    -> AddPullRequestReviewThreadInput
startSide newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startSide"
        "DiffSide"
        (GitHub.Enum.DiffSide.encode newArg_)
        inputObj_


clientMutationId :
    String -> AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { pullRequestId :
        AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    , pullRequestReviewId :
        AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    , side : AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    , startLine :
        AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    , startSide :
        AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    , clientMutationId :
        AddPullRequestReviewThreadInput -> AddPullRequestReviewThreadInput
    }
null =
    { pullRequestId =
        \inputObj ->
            GraphQL.Engine.addField
                "pullRequestId"
                "ID"
                Json.Encode.null
                inputObj
    , pullRequestReviewId =
        \inputObj ->
            GraphQL.Engine.addField
                "pullRequestReviewId"
                "ID"
                Json.Encode.null
                inputObj
    , side =
        \inputObj ->
            GraphQL.Engine.addField "side" "DiffSide" Json.Encode.null inputObj
    , startLine =
        \inputObj ->
            GraphQL.Engine.addField "startLine" "Int" Json.Encode.null inputObj
    , startSide =
        \inputObj ->
            GraphQL.Engine.addField
                "startSide"
                "DiffSide"
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


