module GitHub.Input.UpdateProjectColumnInput exposing (UpdateProjectColumnInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateProjectColumnInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateProjectColumnInput =
    GitHub.Input.UpdateProjectColumnInput


input :
    { projectColumnId : GitHub.Id, name : String } -> UpdateProjectColumnInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "projectColumnId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectColumnId)
            (GraphQL.Engine.inputObject "UpdateProjectColumnInput")
        )


clientMutationId :
    String -> UpdateProjectColumnInput -> UpdateProjectColumnInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : UpdateProjectColumnInput -> UpdateProjectColumnInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


