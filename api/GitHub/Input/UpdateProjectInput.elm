module GitHub.Input.UpdateProjectInput exposing (UpdateProjectInput, body, clientMutationId, input, name, null, public, state)

{-| 
## Creating an input

@docs input, UpdateProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, public, state, body, name
-}


import GitHub
import GitHub.Enum.ProjectState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectInput =
    GitHub.Input.UpdateProjectInput


input : { projectId : GitHub.Id } -> UpdateProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "projectId"
        "ID!"
        (GitHub.id.encode requiredArgs.projectId)
        (GraphQL.Engine.inputObject "UpdateProjectInput")


name : String -> UpdateProjectInput -> UpdateProjectInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


body : String -> UpdateProjectInput -> UpdateProjectInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


state :
    GitHub.Enum.ProjectState.ProjectState
    -> UpdateProjectInput
    -> UpdateProjectInput
state newArg_ inputObj_ =
    GraphQL.Engine.addField
        "state"
        "ProjectState"
        (GitHub.Enum.ProjectState.encode newArg_)
        inputObj_


public : Bool -> UpdateProjectInput -> UpdateProjectInput
public newArg_ inputObj_ =
    GraphQL.Engine.addField
        "public"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> UpdateProjectInput -> UpdateProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : UpdateProjectInput -> UpdateProjectInput
    , body : UpdateProjectInput -> UpdateProjectInput
    , state : UpdateProjectInput -> UpdateProjectInput
    , public : UpdateProjectInput -> UpdateProjectInput
    , clientMutationId : UpdateProjectInput -> UpdateProjectInput
    }
null =
    { name =
        \inputObj ->
            GraphQL.Engine.addField "name" "String" Json.Encode.null inputObj
    , body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
    , state =
        \inputObj ->
            GraphQL.Engine.addField
                "state"
                "ProjectState"
                Json.Encode.null
                inputObj
    , public =
        \inputObj ->
            GraphQL.Engine.addField "public" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


