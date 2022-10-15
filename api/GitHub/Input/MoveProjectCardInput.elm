module GitHub.Input.MoveProjectCardInput exposing (MoveProjectCardInput, afterCardId, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MoveProjectCardInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, afterCardId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MoveProjectCardInput =
    GitHub.Input.MoveProjectCardInput


input : { cardId : GitHub.Id, columnId : GitHub.Id } -> MoveProjectCardInput
input requiredArgs =
    GraphQL.Engine.addField
        "columnId"
        "ID!"
        (GitHub.id.encode requiredArgs.columnId)
        (GraphQL.Engine.addField
            "cardId"
            "ID!"
            (GitHub.id.encode requiredArgs.cardId)
            (GraphQL.Engine.inputObject "MoveProjectCardInput")
        )


afterCardId : GitHub.Id -> MoveProjectCardInput -> MoveProjectCardInput
afterCardId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "afterCardId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> MoveProjectCardInput -> MoveProjectCardInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { afterCardId : MoveProjectCardInput -> MoveProjectCardInput
    , clientMutationId : MoveProjectCardInput -> MoveProjectCardInput
    }
null =
    { afterCardId =
        \inputObj ->
            GraphQL.Engine.addField "afterCardId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


