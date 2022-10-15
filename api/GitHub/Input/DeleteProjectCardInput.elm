module GitHub.Input.DeleteProjectCardInput exposing (DeleteProjectCardInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteProjectCardInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteProjectCardInput =
    GitHub.Input.DeleteProjectCardInput


input : { cardId : GitHub.Id } -> DeleteProjectCardInput
input requiredArgs =
    GraphQL.Engine.addField
        "cardId"
        "ID!"
        (GitHub.id.encode requiredArgs.cardId)
        (GraphQL.Engine.inputObject "DeleteProjectCardInput")


clientMutationId : String -> DeleteProjectCardInput -> DeleteProjectCardInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteProjectCardInput -> DeleteProjectCardInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


