module GitHub.Input.AddReactionInput exposing (AddReactionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddReactionInput

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


type alias AddReactionInput =
    GitHub.Input.AddReactionInput


input :
    { subjectId : GitHub.Id
    , content : GitHub.Enum.ReactionContent.ReactionContent
    }
    -> AddReactionInput
input requiredArgs =
    GraphQL.Engine.addField
        "content"
        "ReactionContent!"
        (GitHub.Enum.ReactionContent.encode requiredArgs.content)
        (GraphQL.Engine.addField
            "subjectId"
            "ID!"
            (GitHub.id.encode requiredArgs.subjectId)
            (GraphQL.Engine.inputObject "AddReactionInput")
        )


clientMutationId : String -> AddReactionInput -> AddReactionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : AddReactionInput -> AddReactionInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


