module GitHub.Input.GrantMigratorRoleInput exposing (GrantMigratorRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, GrantMigratorRoleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.ActorType
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias GrantMigratorRoleInput =
    GitHub.Input.GrantMigratorRoleInput


input :
    { organizationId : GitHub.Id
    , actor : String
    , actorType : GitHub.Enum.ActorType.ActorType
    }
    -> GrantMigratorRoleInput
input requiredArgs =
    GraphQL.Engine.addField
        "actorType"
        "ActorType!"
        (GitHub.Enum.ActorType.encode requiredArgs.actorType)
        (GraphQL.Engine.addField
            "actor"
            "String!"
            (Json.Encode.string requiredArgs.actor)
            (GraphQL.Engine.addField
                "organizationId"
                "ID!"
                (GitHub.id.encode requiredArgs.organizationId)
                (GraphQL.Engine.inputObject "GrantMigratorRoleInput")
            )
        )


clientMutationId : String -> GrantMigratorRoleInput -> GrantMigratorRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : GrantMigratorRoleInput -> GrantMigratorRoleInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


