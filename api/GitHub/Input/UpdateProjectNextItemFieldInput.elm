module GitHub.Input.UpdateProjectNextItemFieldInput exposing (UpdateProjectNextItemFieldInput, clientMutationId, fieldId, input, itemId, null, projectId, value)

{-| 
## Creating an input

@docs input, UpdateProjectNextItemFieldInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, value, fieldId, itemId, projectId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectNextItemFieldInput =
    GitHub.Input.UpdateProjectNextItemFieldInput


input : UpdateProjectNextItemFieldInput
input =
    GraphQL.Engine.inputObject "UpdateProjectNextItemFieldInput"


projectId :
    GitHub.Id
    -> UpdateProjectNextItemFieldInput
    -> UpdateProjectNextItemFieldInput
projectId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


itemId :
    GitHub.Id
    -> UpdateProjectNextItemFieldInput
    -> UpdateProjectNextItemFieldInput
itemId newArg_ inputObj_ =
    GraphQL.Engine.addField "itemId" "ID" (GitHub.id.encode newArg_) inputObj_


fieldId :
    GitHub.Id
    -> UpdateProjectNextItemFieldInput
    -> UpdateProjectNextItemFieldInput
fieldId newArg_ inputObj_ =
    GraphQL.Engine.addField "fieldId" "ID" (GitHub.id.encode newArg_) inputObj_


value :
    String -> UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
value newArg_ inputObj_ =
    GraphQL.Engine.addField
        "value"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId :
    String -> UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { projectId :
        UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
    , itemId :
        UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
    , fieldId :
        UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
    , value : UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
    , clientMutationId :
        UpdateProjectNextItemFieldInput -> UpdateProjectNextItemFieldInput
    }
null =
    { projectId =
        \inputObj ->
            GraphQL.Engine.addField "projectId" "ID" Json.Encode.null inputObj
    , itemId =
        \inputObj ->
            GraphQL.Engine.addField "itemId" "ID" Json.Encode.null inputObj
    , fieldId =
        \inputObj ->
            GraphQL.Engine.addField "fieldId" "ID" Json.Encode.null inputObj
    , value =
        \inputObj ->
            GraphQL.Engine.addField "value" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


