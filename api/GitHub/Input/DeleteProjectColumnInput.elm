module GitHub.Input.DeleteProjectColumnInput exposing (DeleteProjectColumnInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteProjectColumnInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteProjectColumnInput =
    GitHub.Input.DeleteProjectColumnInput


input : { columnId : GitHub.Id } -> DeleteProjectColumnInput
input requiredArgs =
    GraphQL.Engine.addField
        "columnId"
        "ID!"
        (GitHub.id.encode requiredArgs.columnId)
        (GraphQL.Engine.inputObject "DeleteProjectColumnInput")


clientMutationId :
    String -> DeleteProjectColumnInput -> DeleteProjectColumnInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : DeleteProjectColumnInput -> DeleteProjectColumnInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


