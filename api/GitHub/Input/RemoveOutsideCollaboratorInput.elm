module GitHub.Input.RemoveOutsideCollaboratorInput exposing (RemoveOutsideCollaboratorInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RemoveOutsideCollaboratorInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RemoveOutsideCollaboratorInput =
    GitHub.Input.RemoveOutsideCollaboratorInput


input :
    { userId : GitHub.Id, organizationId : GitHub.Id }
    -> RemoveOutsideCollaboratorInput
input requiredArgs =
    GraphQL.Engine.addField
        "organizationId"
        "ID!"
        (GitHub.id.encode requiredArgs.organizationId)
        (GraphQL.Engine.addField
            "userId"
            "ID!"
            (GitHub.id.encode requiredArgs.userId)
            (GraphQL.Engine.inputObject "RemoveOutsideCollaboratorInput")
        )


clientMutationId :
    String -> RemoveOutsideCollaboratorInput -> RemoveOutsideCollaboratorInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        RemoveOutsideCollaboratorInput -> RemoveOutsideCollaboratorInput
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


