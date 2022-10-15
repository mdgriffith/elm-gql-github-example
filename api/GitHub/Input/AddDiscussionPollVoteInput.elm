module GitHub.Input.AddDiscussionPollVoteInput exposing (AddDiscussionPollVoteInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddDiscussionPollVoteInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddDiscussionPollVoteInput =
    GitHub.Input.AddDiscussionPollVoteInput


input : { pollOptionId : GitHub.Id } -> AddDiscussionPollVoteInput
input requiredArgs =
    GraphQL.Engine.addField
        "pollOptionId"
        "ID!"
        (GitHub.id.encode requiredArgs.pollOptionId)
        (GraphQL.Engine.inputObject "AddDiscussionPollVoteInput")


clientMutationId :
    String -> AddDiscussionPollVoteInput -> AddDiscussionPollVoteInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AddDiscussionPollVoteInput -> AddDiscussionPollVoteInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


