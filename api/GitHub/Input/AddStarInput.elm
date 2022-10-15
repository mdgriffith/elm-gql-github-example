module GitHub.Input.AddStarInput exposing (AddStarInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddStarInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddStarInput =
    GitHub.Input.AddStarInput


input : { starrableId : GitHub.Id } -> AddStarInput
input requiredArgs =
    GraphQL.Engine.addField
        "starrableId"
        "ID!"
        (GitHub.id.encode requiredArgs.starrableId)
        (GraphQL.Engine.inputObject "AddStarInput")


clientMutationId : String -> AddStarInput -> AddStarInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : AddStarInput -> AddStarInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


