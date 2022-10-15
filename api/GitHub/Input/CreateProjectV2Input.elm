module GitHub.Input.CreateProjectV2Input exposing (CreateProjectV2Input, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateProjectV2Input

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateProjectV2Input =
    GitHub.Input.CreateProjectV2Input


input : { ownerId : GitHub.Id, title : String } -> CreateProjectV2Input
input requiredArgs =
    GraphQL.Engine.addField
        "title"
        "String!"
        (Json.Encode.string requiredArgs.title)
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject "CreateProjectV2Input")
        )


clientMutationId : String -> CreateProjectV2Input -> CreateProjectV2Input
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : CreateProjectV2Input -> CreateProjectV2Input }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


