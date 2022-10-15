module GitHub.Input.DeleteIssueInput exposing (DeleteIssueInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteIssueInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteIssueInput =
    GitHub.Input.DeleteIssueInput


input : { issueId : GitHub.Id } -> DeleteIssueInput
input requiredArgs =
    GraphQL.Engine.addField
        "issueId"
        "ID!"
        (GitHub.id.encode requiredArgs.issueId)
        (GraphQL.Engine.inputObject "DeleteIssueInput")


clientMutationId : String -> DeleteIssueInput -> DeleteIssueInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteIssueInput -> DeleteIssueInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


