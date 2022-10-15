module GitHub.Input.AddAssigneesToAssignableInput exposing (AddAssigneesToAssignableInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddAssigneesToAssignableInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddAssigneesToAssignableInput =
    GitHub.Input.AddAssigneesToAssignableInput


input :
    { assignableId : GitHub.Id, assigneeIds : List GitHub.Id }
    -> AddAssigneesToAssignableInput
input requiredArgs =
    GraphQL.Engine.addField
        "assigneeIds"
        "[ID!]!"
        (Json.Encode.list GitHub.id.encode requiredArgs.assigneeIds)
        (GraphQL.Engine.addField
            "assignableId"
            "ID!"
            (GitHub.id.encode requiredArgs.assignableId)
            (GraphQL.Engine.inputObject "AddAssigneesToAssignableInput")
        )


clientMutationId :
    String -> AddAssigneesToAssignableInput -> AddAssigneesToAssignableInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        AddAssigneesToAssignableInput -> AddAssigneesToAssignableInput
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


