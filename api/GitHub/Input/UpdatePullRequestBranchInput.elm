module GitHub.Input.UpdatePullRequestBranchInput exposing (UpdatePullRequestBranchInput, clientMutationId, expectedHeadOid, input, null)

{-| 
## Creating an input

@docs input, UpdatePullRequestBranchInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, expectedHeadOid
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdatePullRequestBranchInput =
    GitHub.Input.UpdatePullRequestBranchInput


input : { pullRequestId : GitHub.Id } -> UpdatePullRequestBranchInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "UpdatePullRequestBranchInput")


expectedHeadOid :
    GitHub.GitObjectID
    -> UpdatePullRequestBranchInput
    -> UpdatePullRequestBranchInput
expectedHeadOid newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expectedHeadOid"
        "GitObjectID"
        (GitHub.gitObjectID.encode newArg_)
        inputObj_


clientMutationId :
    String -> UpdatePullRequestBranchInput -> UpdatePullRequestBranchInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { expectedHeadOid :
        UpdatePullRequestBranchInput -> UpdatePullRequestBranchInput
    , clientMutationId :
        UpdatePullRequestBranchInput -> UpdatePullRequestBranchInput
    }
null =
    { expectedHeadOid =
        \inputObj ->
            GraphQL.Engine.addField
                "expectedHeadOid"
                "GitObjectID"
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


