module GitHub.Input.DeclineTopicSuggestionInput exposing (DeclineTopicSuggestionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeclineTopicSuggestionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.TopicSuggestionDeclineReason
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeclineTopicSuggestionInput =
    GitHub.Input.DeclineTopicSuggestionInput


input :
    { repositoryId : GitHub.Id
    , name : String
    , reason :
        GitHub.Enum.TopicSuggestionDeclineReason.TopicSuggestionDeclineReason
    }
    -> DeclineTopicSuggestionInput
input requiredArgs =
    GraphQL.Engine.addField
        "reason"
        "TopicSuggestionDeclineReason!"
        (GitHub.Enum.TopicSuggestionDeclineReason.encode requiredArgs.reason)
        (GraphQL.Engine.addField
            "name"
            "String!"
            (Json.Encode.string requiredArgs.name)
            (GraphQL.Engine.addField
                "repositoryId"
                "ID!"
                (GitHub.id.encode requiredArgs.repositoryId)
                (GraphQL.Engine.inputObject "DeclineTopicSuggestionInput")
            )
        )


clientMutationId :
    String -> DeclineTopicSuggestionInput -> DeclineTopicSuggestionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeclineTopicSuggestionInput -> DeclineTopicSuggestionInput
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


