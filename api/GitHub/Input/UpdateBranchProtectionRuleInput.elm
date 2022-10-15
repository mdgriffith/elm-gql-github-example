module GitHub.Input.UpdateBranchProtectionRuleInput exposing (UpdateBranchProtectionRuleInput, allowsDeletions, allowsForcePushes, blocksCreations, bypassForcePushActorIds, bypassPullRequestActorIds, clientMutationId, dismissesStaleReviews, input, isAdminEnforced, null, pattern, pushActorIds, requiredApprovingReviewCount, requiredStatusCheckContexts, requiredStatusChecks, requiresApprovingReviews, requiresCodeOwnerReviews, requiresCommitSignatures, requiresConversationResolution, requiresLinearHistory, requiresStatusChecks, requiresStrictStatusChecks, restrictsPushes, restrictsReviewDismissals, reviewDismissalActorIds)

{-| 
## Creating an input

@docs input, UpdateBranchProtectionRuleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, requiresConversationResolution, requiredStatusChecks, requiredStatusCheckContexts, pushActorIds, restrictsPushes, bypassForcePushActorIds, bypassPullRequestActorIds, reviewDismissalActorIds, restrictsReviewDismissals, dismissesStaleReviews, requiresCodeOwnerReviews, requiresStrictStatusChecks, requiresStatusChecks, isAdminEnforced, allowsDeletions, allowsForcePushes, blocksCreations, requiresLinearHistory, requiresCommitSignatures, requiredApprovingReviewCount, requiresApprovingReviews, pattern
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias UpdateBranchProtectionRuleInput =
    GitHub.Input.UpdateBranchProtectionRuleInput


input :
    { branchProtectionRuleId : GitHub.Id } -> UpdateBranchProtectionRuleInput
input requiredArgs =
    GraphQL.Engine.addField
        "branchProtectionRuleId"
        "ID!"
        (GitHub.id.encode requiredArgs.branchProtectionRuleId)
        (GraphQL.Engine.inputObject "UpdateBranchProtectionRuleInput")


pattern :
    String -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
pattern newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pattern"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


requiresApprovingReviews :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresApprovingReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresApprovingReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiredApprovingReviewCount :
    Int -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiredApprovingReviewCount newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredApprovingReviewCount"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


requiresCommitSignatures :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresCommitSignatures newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresCommitSignatures"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresLinearHistory :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresLinearHistory newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresLinearHistory"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


blocksCreations :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
blocksCreations newArg_ inputObj_ =
    GraphQL.Engine.addField
        "blocksCreations"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


allowsForcePushes :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
allowsForcePushes newArg_ inputObj_ =
    GraphQL.Engine.addField
        "allowsForcePushes"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


allowsDeletions :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
allowsDeletions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "allowsDeletions"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


isAdminEnforced :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
isAdminEnforced newArg_ inputObj_ =
    GraphQL.Engine.addField
        "isAdminEnforced"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresStatusChecks :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresStatusChecks"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresStrictStatusChecks :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresStrictStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresStrictStatusChecks"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


requiresCodeOwnerReviews :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresCodeOwnerReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresCodeOwnerReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


dismissesStaleReviews :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
dismissesStaleReviews newArg_ inputObj_ =
    GraphQL.Engine.addField
        "dismissesStaleReviews"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


restrictsReviewDismissals :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
restrictsReviewDismissals newArg_ inputObj_ =
    GraphQL.Engine.addField
        "restrictsReviewDismissals"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


reviewDismissalActorIds :
    List GitHub.Id
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
reviewDismissalActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "reviewDismissalActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


bypassPullRequestActorIds :
    List GitHub.Id
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
bypassPullRequestActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bypassPullRequestActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


bypassForcePushActorIds :
    List GitHub.Id
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
bypassForcePushActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "bypassForcePushActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


restrictsPushes :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
restrictsPushes newArg_ inputObj_ =
    GraphQL.Engine.addField
        "restrictsPushes"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


pushActorIds :
    List GitHub.Id
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
pushActorIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "pushActorIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


requiredStatusCheckContexts :
    List String
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
requiredStatusCheckContexts newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredStatusCheckContexts"
        "[String!]"
        (Json.Encode.list Json.Encode.string newArg_)
        inputObj_


requiredStatusChecks :
    List GitHub.Input.RequiredStatusCheckInput
    -> UpdateBranchProtectionRuleInput
    -> UpdateBranchProtectionRuleInput
requiredStatusChecks newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiredStatusChecks"
        "[RequiredStatusCheckInput!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


requiresConversationResolution :
    Bool -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
requiresConversationResolution newArg_ inputObj_ =
    GraphQL.Engine.addField
        "requiresConversationResolution"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { pattern :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresApprovingReviews :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiredApprovingReviewCount :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresCommitSignatures :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresLinearHistory :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , blocksCreations :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , allowsForcePushes :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , allowsDeletions :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , isAdminEnforced :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresStatusChecks :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresStrictStatusChecks :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresCodeOwnerReviews :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , dismissesStaleReviews :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , restrictsReviewDismissals :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , reviewDismissalActorIds :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , bypassPullRequestActorIds :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , bypassForcePushActorIds :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , restrictsPushes :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , pushActorIds :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiredStatusCheckContexts :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiredStatusChecks :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , requiresConversationResolution :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    , clientMutationId :
        UpdateBranchProtectionRuleInput -> UpdateBranchProtectionRuleInput
    }
null =
    { pattern =
        \inputObj ->
            GraphQL.Engine.addField "pattern" "String" Json.Encode.null inputObj
    , requiresApprovingReviews =
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
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


