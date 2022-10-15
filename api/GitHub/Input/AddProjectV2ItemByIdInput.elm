module GitHub.Input.AddProjectV2ItemByIdInput exposing (AddProjectV2ItemByIdInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddProjectV2ItemByIdInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectV2ItemByIdInput =
    GitHub.Input.AddProjectV2ItemByIdInput


input :
    { projectId : GitHub.Id, contentId : GitHub.Id }
    -> AddProjectV2ItemByIdInput
input requiredArgs =
    GraphQL.Engine.addField
        "contentId"
        "ID!"
        (GitHub.id.encode requiredArgs.contentId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "AddProjectV2ItemByIdInput")
        )


clientMutationId :
    String -> AddProjectV2ItemByIdInput -> AddProjectV2ItemByIdInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : AddProjectV2ItemByIdInput -> AddProjectV2ItemByIdInput
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


