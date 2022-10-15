module GitHub.Input.RequestReviewsInput exposing (RequestReviewsInput, clientMutationId, input, null, teamIds, union, userIds)

{-| 
## Creating an input

@docs input, RequestReviewsInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, union, teamIds, userIds
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RequestReviewsInput =
    GitHub.Input.RequestReviewsInput


input : { pullRequestId : GitHub.Id } -> RequestReviewsInput
input requiredArgs =
    GraphQL.Engine.addField
        "pullRequestId"
        "ID!"
        (GitHub.id.encode requiredArgs.pullRequestId)
        (GraphQL.Engine.inputObject "RequestReviewsInput")


userIds : List GitHub.Id -> RequestReviewsInput -> RequestReviewsInput
userIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "userIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


teamIds : List GitHub.Id -> RequestReviewsInput -> RequestReviewsInput
teamIds newArg_ inputObj_ =
    GraphQL.Engine.addField
        "teamIds"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


union : Bool -> RequestReviewsInput -> RequestReviewsInput
union newArg_ inputObj_ =
    GraphQL.Engine.addField
        "union"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> RequestReviewsInput -> RequestReviewsInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { userIds : RequestReviewsInput -> RequestReviewsInput
    , teamIds : RequestReviewsInput -> RequestReviewsInput
    , union : RequestReviewsInput -> RequestReviewsInput
    , clientMutationId : RequestReviewsInput -> RequestReviewsInput
    }
null =
    { userIds =
        \inputObj ->
            GraphQL.Engine.addField "userIds" "[ID!]" Json.Encode.null inputObj
    , teamIds =
        \inputObj ->
            GraphQL.Engine.addField "teamIds" "[ID!]" Json.Encode.null inputObj
    , union =
        \inputObj ->
            GraphQL.Engine.addField "union" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


