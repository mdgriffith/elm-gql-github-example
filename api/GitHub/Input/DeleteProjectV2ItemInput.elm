module GitHub.Input.DeleteProjectV2ItemInput exposing (DeleteProjectV2ItemInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteProjectV2ItemInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteProjectV2ItemInput =
    GitHub.Input.DeleteProjectV2ItemInput


input :
    { projectId : GitHub.Id, itemId : GitHub.Id } -> DeleteProjectV2ItemInput
input requiredArgs =
    GraphQL.Engine.addField
        "itemId"
        "ID!"
        (GitHub.id.encode requiredArgs.itemId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "DeleteProjectV2ItemInput")
        )


clientMutationId :
    String -> DeleteProjectV2ItemInput -> DeleteProjectV2ItemInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : DeleteProjectV2ItemInput -> DeleteProjectV2ItemInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


