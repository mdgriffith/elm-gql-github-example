module GitHub.Input.CloneProjectInput exposing (CloneProjectInput, body, clientMutationId, input, null, public)

{-| 
## Creating an input

@docs input, CloneProjectInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, public, body
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CloneProjectInput =
    GitHub.Input.CloneProjectInput


input :
    { targetOwnerId : GitHub.Id
    , sourceId : GitHub.Id
    , includeWorkflows : Bool
    , name : String
    }
    -> CloneProjectInput
input requiredArgs =
    GraphQL.Engine.addField
        "name"
        "String!"
        (Json.Encode.string requiredArgs.name)
        (GraphQL.Engine.addField
            "includeWorkflows"
            "Boolean!"
            (Json.Encode.bool requiredArgs.includeWorkflows)
            (GraphQL.Engine.addField
                "sourceId"
                "ID!"
                (GitHub.id.encode requiredArgs.sourceId)
                (GraphQL.Engine.addField
                    "targetOwnerId"
                    "ID!"
                    (GitHub.id.encode requiredArgs.targetOwnerId)
                    (GraphQL.Engine.inputObject "CloneProjectInput")
                )
            )
        )


body : String -> CloneProjectInput -> CloneProjectInput
body newArg_ inputObj_ =
    GraphQL.Engine.addField
        "body"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


public : Bool -> CloneProjectInput -> CloneProjectInput
public newArg_ inputObj_ =
    GraphQL.Engine.addField
        "public"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> CloneProjectInput -> CloneProjectInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { body : CloneProjectInput -> CloneProjectInput
    , public : CloneProjectInput -> CloneProjectInput
    , clientMutationId : CloneProjectInput -> CloneProjectInput
    }
null =
    { body =
        \inputObj ->
            GraphQL.Engine.addField "body" "String" Json.Encode.null inputObj
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


