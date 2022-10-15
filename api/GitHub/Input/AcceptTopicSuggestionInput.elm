module GitHub.Input.AcceptTopicSuggestionInput exposing (AcceptTopicSuggestionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AcceptTopicSuggestionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AcceptTopicSuggestionInput =
    GitHub.Input.AcceptTopicSuggestionInput


input :
    { repositoryId : GitHub.Id, name : String } -> AcceptTopicSuggestionInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "AcceptTopicSuggestionInput")
        )


clientMutationId :
    String -> AcceptTopicSuggestionInput -> AcceptTopicSuggestionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AcceptTopicSuggestionInput -> AcceptTopicSuggestionInput
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


