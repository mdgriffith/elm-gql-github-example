module GitHub.Input.UpdateTopicsInput exposing (UpdateTopicsInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateTopicsInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateTopicsInput =
    GitHub.Input.UpdateTopicsInput


input :
    { repositoryId : GitHub.Id, topicNames : List String } -> UpdateTopicsInput
input requiredArgs =
    GraphQL.Engine.addField
        "topicNames"
        "[String!]!"
        (Json.Encode.list Json.Encode.string requiredArgs.topicNames)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "UpdateTopicsInput")
        )


clientMutationId : String -> UpdateTopicsInput -> UpdateTopicsInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UpdateTopicsInput -> UpdateTopicsInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


