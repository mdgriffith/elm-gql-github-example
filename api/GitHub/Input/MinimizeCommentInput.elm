module GitHub.Input.MinimizeCommentInput exposing (MinimizeCommentInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MinimizeCommentInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.ReportedContentClassifiers
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MinimizeCommentInput =
    GitHub.Input.MinimizeCommentInput


input :
    { subjectId : GitHub.Id
    , classifier :
        GitHub.Enum.ReportedContentClassifiers.ReportedContentClassifiers
    }
    -> MinimizeCommentInput
input requiredArgs =
    GraphQL.Engine.addField
        "classifier"
        "ReportedContentClassifiers!"
        (GitHub.Enum.ReportedContentClassifiers.encode requiredArgs.classifier)
        (GraphQL.Engine.addField
            "subjectId"
            "ID!"
            (GitHub.id.encode requiredArgs.subjectId)
            (GraphQL.Engine.inputObject "MinimizeCommentInput")
        )


clientMutationId : String -> MinimizeCommentInput -> MinimizeCommentInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : MinimizeCommentInput -> MinimizeCommentInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


