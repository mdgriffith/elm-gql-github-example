module GitHub.Input.DeleteRefInput exposing (DeleteRefInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteRefInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteRefInput =
    GitHub.Input.DeleteRefInput


input : { refId : GitHub.Id } -> DeleteRefInput
input requiredArgs =
    GraphQL.Engine.addField
        "refId"
        "ID!"
        (GitHub.id.encode requiredArgs.refId)
        (GraphQL.Engine.inputObject "DeleteRefInput")


clientMutationId : String -> DeleteRefInput -> DeleteRefInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : DeleteRefInput -> DeleteRefInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


