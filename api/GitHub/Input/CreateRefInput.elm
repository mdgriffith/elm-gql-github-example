module GitHub.Input.CreateRefInput exposing (CreateRefInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateRefInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateRefInput =
    GitHub.Input.CreateRefInput


input :
    { repositoryId : GitHub.Id, name : String, oid : GitHub.GitObjectID }
    -> CreateRefInput
input requiredArgs =
    GraphQL.Engine.addField
        "oid"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.oid)
        (GraphQL.Engine.addField
            "name"
            "String!"
            (Json.Encode.string requiredArgs.name)
            (GraphQL.Engine.addField
                "repositoryId"
                "ID!"
                (GitHub.id.encode requiredArgs.repositoryId)
                (GraphQL.Engine.inputObject "CreateRefInput")
            )
        )


clientMutationId : String -> CreateRefInput -> CreateRefInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : CreateRefInput -> CreateRefInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


