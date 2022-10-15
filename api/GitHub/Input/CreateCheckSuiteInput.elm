module GitHub.Input.CreateCheckSuiteInput exposing (CreateCheckSuiteInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateCheckSuiteInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateCheckSuiteInput =
    GitHub.Input.CreateCheckSuiteInput


input :
    { repositoryId : GitHub.Id, headSha : GitHub.GitObjectID }
    -> CreateCheckSuiteInput
input requiredArgs =
    GraphQL.Engine.addField
        "headSha"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.headSha)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "CreateCheckSuiteInput")
        )


clientMutationId : String -> CreateCheckSuiteInput -> CreateCheckSuiteInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : CreateCheckSuiteInput -> CreateCheckSuiteInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


