module GitHub.Input.RevokeMigratorRoleInput exposing (RevokeMigratorRoleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, RevokeMigratorRoleInput

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


type alias RevokeMigratorRoleInput =
    GitHub.Input.RevokeMigratorRoleInput


input :
    { organizationId : GitHub.Id
    , actor : String
    , actorType : GitHub.Enum.ActorType.ActorType
    }
    -> RevokeMigratorRoleInput
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
                (GraphQL.Engine.inputObject "RevokeMigratorRoleInput")
            )
        )


clientMutationId : String -> RevokeMigratorRoleInput -> RevokeMigratorRoleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : RevokeMigratorRoleInput -> RevokeMigratorRoleInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


