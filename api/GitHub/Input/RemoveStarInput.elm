module GitHub.Input.RemoveStarInput exposing (RemoveStarInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveStarInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveStarInput =
    GitHub.Input.RemoveStarInput


input : { starrableId : GitHub.Id } -> RemoveStarInput
input requiredArgs =
    GraphQL.Engine.addField
        "starrableId"
        "ID!"
        (GitHub.id.encode requiredArgs.starrableId)
        (GraphQL.Engine.inputObject "RemoveStarInput")


clientMutationId : String -> RemoveStarInput -> RemoveStarInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : RemoveStarInput -> RemoveStarInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


