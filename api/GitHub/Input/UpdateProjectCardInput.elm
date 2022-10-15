module GitHub.Input.UpdateProjectCardInput exposing (UpdateProjectCardInput, clientMutationId, input, isArchived, note, null)

{-| 
## Creating an input

@docs input, UpdateProjectCardInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, note, isArchived
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectCardInput =
    GitHub.Input.UpdateProjectCardInput


input : { projectCardId : GitHub.Id } -> UpdateProjectCardInput
input requiredArgs =
    GraphQL.Engine.addField
        "projectCardId"
        "ID!"
        (GitHub.id.encode requiredArgs.projectCardId)
        (GraphQL.Engine.inputObject "UpdateProjectCardInput")


isArchived : Bool -> UpdateProjectCardInput -> UpdateProjectCardInput
isArchived newArg_ inputObj_ =
    GraphQL.Engine.addField
        "isArchived"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


note : String -> UpdateProjectCardInput -> UpdateProjectCardInput
note newArg_ inputObj_ =
    GraphQL.Engine.addField
        "note"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> UpdateProjectCardInput -> UpdateProjectCardInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { isArchived : UpdateProjectCardInput -> UpdateProjectCardInput
    , note : UpdateProjectCardInput -> UpdateProjectCardInput
    , clientMutationId : UpdateProjectCardInput -> UpdateProjectCardInput
    }
null =
    { isArchived =
        \inputObj ->
            GraphQL.Engine.addField
                "isArchived"
                "Boolean"
                Json.Encode.null
                inputObj
    , note =
        \inputObj ->
            GraphQL.Engine.addField "note" "String" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


