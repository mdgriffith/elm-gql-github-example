module GitHub.Input.AddProjectNextItemInput exposing (AddProjectNextItemInput, clientMutationId, contentId, input, null, projectId)

{-| 
## Creating an input

@docs input, AddProjectNextItemInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, contentId, projectId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectNextItemInput =
    GitHub.Input.AddProjectNextItemInput


input : AddProjectNextItemInput
input =
    GraphQL.Engine.inputObject "AddProjectNextItemInput"


projectId : GitHub.Id -> AddProjectNextItemInput -> AddProjectNextItemInput
projectId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


contentId : GitHub.Id -> AddProjectNextItemInput -> AddProjectNextItemInput
contentId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "contentId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> AddProjectNextItemInput -> AddProjectNextItemInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { projectId : AddProjectNextItemInput -> AddProjectNextItemInput
    , contentId : AddProjectNextItemInput -> AddProjectNextItemInput
    , clientMutationId : AddProjectNextItemInput -> AddProjectNextItemInput
    }
null =
    { projectId =
        \inputObj ->
            GraphQL.Engine.addField "projectId" "ID" Json.Encode.null inputObj
    , contentId =
        \inputObj ->
            GraphQL.Engine.addField "contentId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


