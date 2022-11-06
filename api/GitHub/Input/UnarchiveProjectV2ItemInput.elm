module GitHub.Input.UnarchiveProjectV2ItemInput exposing (UnarchiveProjectV2ItemInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnarchiveProjectV2ItemInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnarchiveProjectV2ItemInput =
    GitHub.Input.UnarchiveProjectV2ItemInput


input :
    { projectId : GitHub.Id, itemId : GitHub.Id } -> UnarchiveProjectV2ItemInput
input requiredArgs =
    GraphQL.Engine.addField
        "itemId"
        "ID!"
        (GitHub.id.encode requiredArgs.itemId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "UnarchiveProjectV2ItemInput")
        )


clientMutationId :
    String -> UnarchiveProjectV2ItemInput -> UnarchiveProjectV2ItemInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UnarchiveProjectV2ItemInput -> UnarchiveProjectV2ItemInput
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


