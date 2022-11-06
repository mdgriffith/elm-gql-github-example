module GitHub.Input.CreateBranchProtectionRuleInput exposing (CreateBranchProtectionRuleInput, allowsDeletions, allowsForcePushes, blocksCreations, bypassForcePushActorIds, bypassPullRequestActorIds, clientMutationId, dismissesStaleReviews, input, isAdminEnforced, lockAllowsFetchAndMerge, lockBranch, null, pushActorIds, requireLastPushApproval, requiredApprovingReviewCount, requiredStatusCheckContexts, requiredStatusChecks, requiresApprovingReviews, requiresCodeOwnerReviews, requiresCommitSignatures, requiresConversationResolution, requiresLinearHistory, requiresStatusChecks, requiresStrictStatusChecks, restrictsPushes, restrictsReviewDismissals, reviewDismissalActorIds)

{-| 
## Creating an input

@docs input, CreateBranchProtectionRuleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, lockAllowsFetchAndMerge, lockBranch, requireLastPushApproval, requiresConversationResolution, requiredStatusChecks, requiredStatusCheckContexts, pushActorIds, restrictsPushes, bypassForcePushActorIds, bypassPullRequestActorIds, reviewDismissalActorIds, restrictsReviewDismissals, dismissesStaleReviews, requiresCodeOwnerReviews, requiresStrictStatusChecks, requiresStatusChecks, isAdminEnforced, allowsDeletions, allowsForcePushes, blocksCreations, requiresLinearHistory, requiresCommitSignatures, requiredApprovingReviewCount, requiresApprovingReviews
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias CreateBranchProtectionRuleInput =
    GitHub.Input.CreateBranchProtectionRuleInput


input :
    { repositoryId : GitHub.Id, pattern : String }
    -> CreateBranchProtectionRuleInput
input requiredArgs =
    GraphQL.Engine.addField
        "pattern"
        "String!"
        (Json.Encode.string requiredArgs.pattern)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "CreateBranchProtectionRuleInput")
        )


requiresApprovingReviews :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresApprovingReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresApprovingReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiredApprovingReviewCount :
    Int -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiredApprovingReviewCount newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredApprovingReviewCount"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


requiresCommitSignatures :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresCommitSignatures newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresCommitSignatures"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresLinearHistory :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresLinearHistory newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresLinearHistory"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


blocksCreations :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
blocksCreations newArg_ inputObj_ =
    GraphQL.Engine.addField
        "blocksCreations"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


allowsForcePushes :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
allowsForcePushes newArg_ inputObj_ =
    GraphQL.Engine.addField
        "allowsForcePushes"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


allowsDeletions :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
allowsDeletions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "allowsDeletions"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


isAdminEnforced :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
isAdminEnforced newArg_ inputObj_ =
    GraphQL.Engine.addField
        "isAdminEnforced"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresStatusChecks :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresStatusChecks"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresStrictStatusChecks :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresStrictStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresStrictStatusChecks"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresCodeOwnerReviews :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresCodeOwnerReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresCodeOwnerReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


dismissesStaleReviews :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
dismissesStaleReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "dismissesStaleReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


restrictsReviewDismissals :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
restrictsReviewDismissals newArg_ inputObj_ =
    GraphQL.Engine.addField
        "restrictsReviewDismissals"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


reviewDismissalActorIds :
    List GitHub.Id
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
reviewDismissalActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "reviewDismissalActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


bypassPullRequestActorIds :
    List GitHub.Id
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
bypassPullRequestActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bypassPullRequestActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


bypassForcePushActorIds :
    List GitHub.Id
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
bypassForcePushActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bypassForcePushActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


restrictsPushes :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
restrictsPushes newArg_ inputObj_ =
    GraphQL.Engine.addField
        "restrictsPushes"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


pushActorIds :
    List GitHub.Id
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
pushActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pushActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


requiredStatusCheckContexts :
    List String
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
requiredStatusCheckContexts newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredStatusCheckContexts"
        "[String!]"
        (Json.Encode.list Json.Encode.string newArg_)
        inputObj_


requiredStatusChecks :
    List GitHub.Input.RequiredStatusCheckInput
    -> CreateBranchProtectionRuleInput
    -> CreateBranchProtectionRuleInput
requiredStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredStatusChecks"
        "[RequiredStatusCheckInput!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


requiresConversationResolution :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requiresConversationResolution newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresConversationResolution"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requireLastPushApproval :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
requireLastPushApproval newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requireLastPushApproval"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


lockBranch :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
lockBranch newArg_ inputObj_ =
    GraphQL.Engine.addField
        "lockBranch"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


lockAllowsFetchAndMerge :
    Bool -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
lockAllowsFetchAndMerge newArg_ inputObj_ =
    GraphQL.Engine.addField
        "lockAllowsFetchAndMerge"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { requiresApprovingReviews :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiredApprovingReviewCount :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresCommitSignatures :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresLinearHistory :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , blocksCreations :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , allowsForcePushes :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , allowsDeletions :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , isAdminEnforced :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresStatusChecks :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresStrictStatusChecks :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresCodeOwnerReviews :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , dismissesStaleReviews :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , restrictsReviewDismissals :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , reviewDismissalActorIds :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , bypassPullRequestActorIds :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , bypassForcePushActorIds :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , restrictsPushes :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , pushActorIds :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiredStatusCheckContexts :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiredStatusChecks :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requiresConversationResolution :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , requireLastPushApproval :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , lockBranch :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , lockAllowsFetchAndMerge :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    , clientMutationId :
        CreateBranchProtectionRuleInput -> CreateBranchProtectionRuleInput
    }
null =
    { requiresApprovingReviews =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresApprovingReviews"
                "Boolean"
                Json.Encode.null
                inputObj
    , requiredApprovingReviewCount =
        \inputObj ->
            GraphQL.Engine.addField
                "requiredApprovingReviewCount"
                "Int"
                Json.Encode.null
                inputObj
    , requiresCommitSignatures =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresCommitSignatures"
                "Boolean"
                Json.Encode.null
                inputObj
    , requiresLinearHistory =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresLinearHistory"
                "Boolean"
                Json.Encode.null
                inputObj
    , blocksCreations =
        \inputObj ->
            GraphQL.Engine.addField
                "blocksCreations"
                "Boolean"
                Json.Encode.null
                inputObj
    , allowsForcePushes =
        \inputObj ->
            GraphQL.Engine.addField
                "allowsForcePushes"
                "Boolean"
                Json.Encode.null
                inputObj
    , allowsDeletions =
        \inputObj ->
            GraphQL.Engine.addField
                "allowsDeletions"
                "Boolean"
                Json.Encode.null
                inputObj
    , isAdminEnforced =
        \inputObj ->
            GraphQL.Engine.addField
                "isAdminEnforced"
                "Boolean"
                Json.Encode.null
                inputObj
    , requiresStatusChecks =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresStatusChecks"
                "Boolean"
                Json.Encode.null
                inputObj
    , requiresStrictStatusChecks =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresStrictStatusChecks"
                "Boolean"
                Json.Encode.null
                inputObj
    , requiresCodeOwnerReviews =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresCodeOwnerReviews"
                "Boolean"
                Json.Encode.null
                inputObj
    , dismissesStaleReviews =
        \inputObj ->
            GraphQL.Engine.addField
                "dismissesStaleReviews"
                "Boolean"
                Json.Encode.null
                inputObj
    , restrictsReviewDismissals =
        \inputObj ->
            GraphQL.Engine.addField
                "restrictsReviewDismissals"
                "Boolean"
                Json.Encode.null
                inputObj
    , reviewDismissalActorIds =
        \inputObj ->
            GraphQL.Engine.addField
                "reviewDismissalActorIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , bypassPullRequestActorIds =
        \inputObj ->
            GraphQL.Engine.addField
                "bypassPullRequestActorIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , bypassForcePushActorIds =
        \inputObj ->
            GraphQL.Engine.addField
                "bypassForcePushActorIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , restrictsPushes =
        \inputObj ->
            GraphQL.Engine.addField
                "restrictsPushes"
                "Boolean"
                Json.Encode.null
                inputObj
    , pushActorIds =
        \inputObj ->
            GraphQL.Engine.addField
                "pushActorIds"
                "[ID!]"
                Json.Encode.null
                inputObj
    , requiredStatusCheckContexts =
        \inputObj ->
            GraphQL.Engine.addField
                "requiredStatusCheckContexts"
                "[String!]"
                Json.Encode.null
                inputObj
    , requiredStatusChecks =
        \inputObj ->
            GraphQL.Engine.addField
                "requiredStatusChecks"
                "[RequiredStatusCheckInput!]"
                Json.Encode.null
                inputObj
    , requiresConversationResolution =
        \inputObj ->
            GraphQL.Engine.addField
                "requiresConversationResolution"
                "Boolean"
                Json.Encode.null
                inputObj
    , requireLastPushApproval =
        \inputObj ->
            GraphQL.Engine.addField
                "requireLastPushApproval"
                "Boolean"
                Json.Encode.null
                inputObj
    , lockBranch =
        \inputObj ->
            GraphQL.Engine.addField
                "lockBranch"
                "Boolean"
                Json.Encode.null
                inputObj
    , lockAllowsFetchAndMerge =
        \inputObj ->
            GraphQL.Engine.addField
                "lockAllowsFetchAndMerge"
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


