module GitHub.Input.CreateDiscussionInput exposing (CreateDiscussionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateDiscussionInput =
    GitHub.Input.CreateDiscussionInput


input :
    { repositoryId : GitHub.Id
    , title : String
    , body : String
    , categoryId : GitHub.Id
    }
    -> CreateDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "categoryId"
        "ID!"
        (GitHub.id.encode requiredArgs.categoryId)
        (GraphQL.Engine.addField
            "body"
            "String!"
            (Json.Encode.string requiredArgs.body)
            (GraphQL.Engine.addField
                "title"
                "String!"
                (Json.Encode.string requiredArgs.title)
                (GraphQL.Engine.addField
                    "repositoryId"
                    "ID!"
                    (GitHub.id.encode requiredArgs.repositoryId)
                    (GraphQL.Engine.inputObject "CreateDiscussionInput")
                )
            )
        )


clientMutationId : String -> CreateDiscussionInput -> CreateDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : CreateDiscussionInput -> CreateDiscussionInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


