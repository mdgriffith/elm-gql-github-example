module GitHub.Input.UpdateEnvironmentInput exposing (UpdateEnvironmentInput, clientMutationId, input, null, reviewers, waitTimer)

{-| 
## Creating an input

@docs input, UpdateEnvironmentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, reviewers, waitTimer
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnvironmentInput =
    GitHub.Input.UpdateEnvironmentInput


input : { environmentId : GitHub.Id } -> UpdateEnvironmentInput
input requiredArgs =
    GraphQL.Engine.addField
        "environmentId"
        "ID!"
        (GitHub.id.encode requiredArgs.environmentId)
        (GraphQL.Engine.inputObject "UpdateEnvironmentInput")


waitTimer : Int -> UpdateEnvironmentInput -> UpdateEnvironmentInput
waitTimer newArg_ inputObj_ =
    GraphQL.Engine.addField
        "waitTimer"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


reviewers : List GitHub.Id -> UpdateEnvironmentInput -> UpdateEnvironmentInput
reviewers newArg_ inputObj_ =
    GraphQL.Engine.addField
        "reviewers"
        "[ID!]"
        (Json.Encode.list GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> UpdateEnvironmentInput -> UpdateEnvironmentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { waitTimer : UpdateEnvironmentInput -> UpdateEnvironmentInput
    , reviewers : UpdateEnvironmentInput -> UpdateEnvironmentInput
    , clientMutationId : UpdateEnvironmentInput -> UpdateEnvironmentInput
    }
null =
    { waitTimer =
        \inputObj ->
            GraphQL.Engine.addField "waitTimer" "Int" Json.Encode.null inputObj
    , reviewers =
        \inputObj ->
            GraphQL.Engine.addField
                "reviewers"
                "[ID!]"
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


