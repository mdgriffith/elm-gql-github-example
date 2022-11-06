module GitHub.Input.ArchiveProjectV2ItemInput exposing (ArchiveProjectV2ItemInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, ArchiveProjectV2ItemInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias ArchiveProjectV2ItemInput =
    GitHub.Input.ArchiveProjectV2ItemInput


input :
    { projectId : GitHub.Id, itemId : GitHub.Id } -> ArchiveProjectV2ItemInput
input requiredArgs =
    GraphQL.Engine.addField
        "itemId"
        "ID!"
        (GitHub.id.encode requiredArgs.itemId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "ArchiveProjectV2ItemInput")
        )


clientMutationId :
    String -> ArchiveProjectV2ItemInput -> ArchiveProjectV2ItemInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : ArchiveProjectV2ItemInput -> ArchiveProjectV2ItemInput
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


