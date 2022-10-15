module GitHub.Input.RepositoryInvitationOrder exposing (RepositoryInvitationOrder, input)

{-| 
## Creating an input

@docs input, RepositoryInvitationOrder
-}


import GitHub.Enum.OrderDirection
import GitHub.Enum.RepositoryInvitationOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RepositoryInvitationOrder =
    GitHub.Input.RepositoryInvitationOrder


input :
    { field :
        GitHub.Enum.RepositoryInvitationOrderField.RepositoryInvitationOrderField
    , direction : GitHub.Enum.OrderDirection.OrderDirection
    }
    -> RepositoryInvitationOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "OrderDirection!"
        (GitHub.Enum.OrderDirection.encode requiredArgs.direction)
        (GraphQL.Engine.addField
            "field"
            "RepositoryInvitationOrderField!"
            (GitHub.Enum.RepositoryInvitationOrderField.encode
                requiredArgs.field
            )
            (GraphQL.Engine.inputObject "RepositoryInvitationOrder")
        )


