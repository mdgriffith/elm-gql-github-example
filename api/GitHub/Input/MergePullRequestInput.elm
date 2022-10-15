module GitHub.Input.MergePullRequestInput exposing (MergePullRequestInput, authorEmail, clientMutationId, commitBody, commitHeadline, expectedHeadOid, input, mergeMethod, null)

{-| 
## Creating an input

@docs input, MergePullRequestInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, authorEmail, mergeMethod, expectedHeadOid, commitBody, commitHeadline
-}


import GitHub
import GitHub.Enum.PullRequestMergeMethod
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MergePullRequestInput =
    GitHub.Input.MergePullRequestInput


input : { pullRequestId : GitHub.Id } -> MergePullRequestInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "MergePullRequestInput")


commitHeadline : String -> MergePullRequestInput -> MergePullRequestInput
commitHeadline newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitHeadline"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


commitBody : String -> MergePullRequestInput -> MergePullRequestInput
commitBody newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitBody"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


expectedHeadOid :
    GitHub.GitObjectID -> MergePullRequestInput -> MergePullRequestInput
expectedHeadOid newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expectedHeadOid"
        "GitObjectID"
        (GitHub.gitObjectID.encode newArg_)
        inputObj_


mergeMethod :
    GitHub.Enum.PullRequestMergeMethod.PullRequestMergeMethod
    -> MergePullRequestInput
    -> MergePullRequestInput
mergeMethod newArg_ inputObj_ =
    GraphQL.Engine.addField
        "mergeMethod"
        "PullRequestMergeMethod"
        (GitHub.Enum.PullRequestMergeMethod.encode newArg_)
        inputObj_


authorEmail : String -> MergePullRequestInput -> MergePullRequestInput
authorEmail newArg_ inputObj_ =
    GraphQL.Engine.addField
        "authorEmail"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> MergePullRequestInput -> MergePullRequestInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { commitHeadline : MergePullRequestInput -> MergePullRequestInput
    , commitBody : MergePullRequestInput -> MergePullRequestInput
    , expectedHeadOid : MergePullRequestInput -> MergePullRequestInput
    , mergeMethod : MergePullRequestInput -> MergePullRequestInput
    , authorEmail : MergePullRequestInput -> MergePullRequestInput
    , clientMutationId : MergePullRequestInput -> MergePullRequestInput
    }
null =
    { commitHeadline =
        \inputObj ->
            GraphQL.Engine.addField
                "commitHeadline"
                "String"
                Json.Encode.null
                inputObj
    , commitBody =
        \inputObj ->
            GraphQL.Engine.addField
                "commitBody"
                "String"
                Json.Encode.null
                inputObj
    , expectedHeadOid =
        \inputObj ->
            GraphQL.Engine.addField
                "expectedHeadOid"
                "GitObjectID"
                Json.Encode.null
                inputObj
    , mergeMethod =
        \inputObj ->
            GraphQL.Engine.addField
                "mergeMethod"
                "PullRequestMergeMethod"
                Json.Encode.null
                inputObj
    , authorEmail =
        \inputObj ->
            GraphQL.Engine.addField
                "authorEmail"
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


