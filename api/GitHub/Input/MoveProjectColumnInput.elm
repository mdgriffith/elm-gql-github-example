module GitHub.Input.MoveProjectColumnInput exposing (MoveProjectColumnInput, afterColumnId, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, MoveProjectColumnInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, afterColumnId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MoveProjectColumnInput =
    GitHub.Input.MoveProjectColumnInput


input : { columnId : GitHub.Id } -> MoveProjectColumnInput
input requiredArgs =
    GraphQL.Engine.addField
        "columnId"
        "ID!"
        (GitHub.id.encode requiredArgs.columnId)
        (GraphQL.Engine.inputObject "MoveProjectColumnInput")


afterColumnId : GitHub.Id -> MoveProjectColumnInput -> MoveProjectColumnInput
afterColumnId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "afterColumnId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> MoveProjectColumnInput -> MoveProjectColumnInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { afterColumnId : MoveProjectColumnInput -> MoveProjectColumnInput
    , clientMutationId : MoveProjectColumnInput -> MoveProjectColumnInput
    }
null =
    { afterColumnId =
        \inputObj ->
            GraphQL.Engine.addField
                "afterColumnId"
                "ID"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


