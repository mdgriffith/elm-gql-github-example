module GitHub.Input.UpdateProjectV2ItemPositionInput exposing (UpdateProjectV2ItemPositionInput, afterId, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateProjectV2ItemPositionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, afterId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectV2ItemPositionInput =
    GitHub.Input.UpdateProjectV2ItemPositionInput


input :
    { projectId : GitHub.Id, itemId : GitHub.Id }
    -> UpdateProjectV2ItemPositionInput
input requiredArgs =
    GraphQL.Engine.addField
        "itemId"
        "ID!"
        (GitHub.id.encode requiredArgs.itemId)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "UpdateProjectV2ItemPositionInput")
        )


afterId :
    GitHub.Id
    -> UpdateProjectV2ItemPositionInput
    -> UpdateProjectV2ItemPositionInput
afterId newArg_ inputObj_ =
    GraphQL.Engine.addField "afterId" "ID" (GitHub.id.encode newArg_) inputObj_


clientMutationId :
    String
    -> UpdateProjectV2ItemPositionInput
    -> UpdateProjectV2ItemPositionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { afterId :
        UpdateProjectV2ItemPositionInput -> UpdateProjectV2ItemPositionInput
    , clientMutationId :
        UpdateProjectV2ItemPositionInput -> UpdateProjectV2ItemPositionInput
    }
null =
    { afterId =
        \inputObj ->
            GraphQL.Engine.addField "afterId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


