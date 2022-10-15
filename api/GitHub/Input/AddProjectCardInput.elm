module GitHub.Input.AddProjectCardInput exposing (AddProjectCardInput, clientMutationId, contentId, input, note, null)

{-| 
## Creating an input

@docs input, AddProjectCardInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, note, contentId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectCardInput =
    GitHub.Input.AddProjectCardInput


input : { projectColumnId : GitHub.Id } -> AddProjectCardInput
input requiredArgs =
    GraphQL.Engine.addField
        "projectColumnId"
        "ID!"
        (GitHub.id.encode requiredArgs.projectColumnId)
        (GraphQL.Engine.inputObject "AddProjectCardInput")


contentId : GitHub.Id -> AddProjectCardInput -> AddProjectCardInput
contentId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "contentId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


note : String -> AddProjectCardInput -> AddProjectCardInput
note newArg_ inputObj_ =
    GraphQL.Engine.addField
        "note"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> AddProjectCardInput -> AddProjectCardInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { contentId : AddProjectCardInput -> AddProjectCardInput
    , note : AddProjectCardInput -> AddProjectCardInput
    , clientMutationId : AddProjectCardInput -> AddProjectCardInput
    }
null =
    { contentId =
        \inputObj ->
            GraphQL.Engine.addField "contentId" "ID" Json.Encode.null inputObj
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


