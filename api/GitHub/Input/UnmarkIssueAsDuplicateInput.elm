module GitHub.Input.UnmarkIssueAsDuplicateInput exposing (UnmarkIssueAsDuplicateInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnmarkIssueAsDuplicateInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnmarkIssueAsDuplicateInput =
    GitHub.Input.UnmarkIssueAsDuplicateInput


input :
    { duplicateId : GitHub.Id, canonicalId : GitHub.Id }
    -> UnmarkIssueAsDuplicateInput
input requiredArgs =
    GraphQL.Engine.addField
        "canonicalId"
        "ID!"
        (GitHub.id.encode requiredArgs.canonicalId)
        (GraphQL.Engine.addField
            "duplicateId"
            "ID!"
            (GitHub.id.encode requiredArgs.duplicateId)
            (GraphQL.Engine.inputObject "UnmarkIssueAsDuplicateInput")
        )


clientMutationId :
    String -> UnmarkIssueAsDuplicateInput -> UnmarkIssueAsDuplicateInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnmarkIssueAsDuplicateInput -> UnmarkIssueAsDuplicateInput
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


