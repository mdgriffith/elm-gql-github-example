module GitHub.Input.RemoveAssigneesFromAssignableInput exposing (RemoveAssigneesFromAssignableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveAssigneesFromAssignableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveAssigneesFromAssignableInput =
    GitHub.Input.RemoveAssigneesFromAssignableInput


input :
    { assignableId : GitHub.Id, assigneeIds : List GitHub.Id }
    -> RemoveAssigneesFromAssignableInput
input requiredArgs =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.assigneeIds)
        (GraphQL.Engine.addField
            "assignableId"
            "ID!"
            (GitHub.id.encode requiredArgs.assignableId)
            (GraphQL.Engine.inputObject "RemoveAssigneesFromAssignableInput")
        )


clientMutationId :
    String
    -> RemoveAssigneesFromAssignableInput
    -> RemoveAssigneesFromAssignableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveAssigneesFromAssignableInput -> RemoveAssigneesFromAssignableInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


