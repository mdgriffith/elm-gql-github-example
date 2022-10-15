module GitHub.Input.UpdateRefInput exposing (UpdateRefInput, clientMutationId, force, input, null)

{-| 
## Creating an input

@docs input, UpdateRefInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, force
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateRefInput =
    GitHub.Input.UpdateRefInput


input : { refId : GitHub.Id, oid : GitHub.GitObjectID } -> UpdateRefInput
input requiredArgs =
    GraphQL.Engine.addField
        "oid"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.oid)
        (GraphQL.Engine.addField
            "refId"
            "ID!"
            (GitHub.id.encode requiredArgs.refId)
            (GraphQL.Engine.inputObject "UpdateRefInput")
        )


force : Bool -> UpdateRefInput -> UpdateRefInput
force newArg_ inputObj_ =
    GraphQL.Engine.addField
        "force"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> UpdateRefInput -> UpdateRefInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { force : UpdateRefInput -> UpdateRefInput
    , clientMutationId : UpdateRefInput -> UpdateRefInput
    }
null =
    { force =
        \inputObj ->
            GraphQL.Engine.addField "force" "Boolean" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


