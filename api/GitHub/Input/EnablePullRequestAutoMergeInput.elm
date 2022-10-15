module GitHub.Input.EnablePullRequestAutoMergeInput exposing (EnablePullRequestAutoMergeInput, authorEmail, clientMutationId, commitBody, commitHeadline, input, mergeMethod, null)

{-| 
## Creating an input

@docs input, EnablePullRequestAutoMergeInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, authorEmail, mergeMethod, commitBody, commitHeadline
-}


import GitHub
import GitHub.Enum.PullRequestMergeMethod
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias EnablePullRequestAutoMergeInput =
    GitHub.Input.EnablePullRequestAutoMergeInput


input : { pullRequestId : GitHub.Id } -> EnablePullRequestAutoMergeInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "EnablePullRequestAutoMergeInput")


commitHeadline :
    String -> EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
commitHeadline newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitHeadline"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


commitBody :
    String -> EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
commitBody newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitBody"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


mergeMethod :
    GitHub.Enum.PullRequestMergeMethod.PullRequestMergeMethod
    -> EnablePullRequestAutoMergeInput
    -> EnablePullRequestAutoMergeInput
mergeMethod newArg_ inputObj_ =
    GraphQL.Engine.addField
        "mergeMethod"
        "PullRequestMergeMethod"
        (GitHub.Enum.PullRequestMergeMethod.encode newArg_)
        inputObj_


authorEmail :
    String -> EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
authorEmail newArg_ inputObj_ =
    GraphQL.Engine.addField
        "authorEmail"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { commitHeadline :
        EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
    , commitBody :
        EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
    , mergeMethod :
        EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
    , authorEmail :
        EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
    , clientMutationId :
        EnablePullRequestAutoMergeInput -> EnablePullRequestAutoMergeInput
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


