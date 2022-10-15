module GitHub.Input.AddProjectColumnInput exposing (AddProjectColumnInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, AddProjectColumnInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias AddProjectColumnInput =
    GitHub.Input.AddProjectColumnInput


input : { projectId : GitHub.Id, name : String } -> AddProjectColumnInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "projectId"
            "ID!"
            (GitHub.id.encode requiredArgs.projectId)
            (GraphQL.Engine.inputObject "AddProjectColumnInput")
        )


clientMutationId : String -> AddProjectColumnInput -> AddProjectColumnInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : AddProjectColumnInput -> AddProjectColumnInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


