module GitHub.Input.RemoveReactionInput exposing (RemoveReactionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveReactionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.ReactionContent
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveReactionInput =
    GitHub.Input.RemoveReactionInput


input :
    { subjectId : GitHub.Id
    , content : GitHub.Enum.ReactionContent.ReactionContent
    }
    -> RemoveReactionInput
input requiredArgs =
    GraphQL.Engine.addField
        "content"
        "ReactionContent!"
        (GitHub.Enum.ReactionContent.encode requiredArgs.content)
        (GraphQL.Engine.addField
            "subjectId"
            "ID!"
            (GitHub.id.encode requiredArgs.subjectId)
            (GraphQL.Engine.inputObject "RemoveReactionInput")
        )


clientMutationId : String -> RemoveReactionInput -> RemoveReactionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : RemoveReactionInput -> RemoveReactionInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


