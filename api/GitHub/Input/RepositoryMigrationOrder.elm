module GitHub.Input.RepositoryMigrationOrder exposing (RepositoryMigrationOrder, input)

{-| 
## Creating an input

@docs input, RepositoryMigrationOrder
-}


import GitHub.Enum.RepositoryMigrationOrderDirection
import GitHub.Enum.RepositoryMigrationOrderField
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias RepositoryMigrationOrder =
    GitHub.Input.RepositoryMigrationOrder


input :
    { field :
        GitHub.Enum.RepositoryMigrationOrderField.RepositoryMigrationOrderField
    , direction :
        GitHub.Enum.RepositoryMigrationOrderDirection.RepositoryMigrationOrderDirection
    }
    -> RepositoryMigrationOrder
input requiredArgs =
    GraphQL.Engine.addField
        "direction"
        "RepositoryMigrationOrderDirection!"
        (GitHub.Enum.RepositoryMigrationOrderDirection.encode
            requiredArgs.direction
        )
        (GraphQL.Engine.addField
            "field"
            "RepositoryMigrationOrderField!"
            (GitHub.Enum.RepositoryMigrationOrderField.encode requiredArgs.field
            )
            (GraphQL.Engine.inputObject "RepositoryMigrationOrder")
        )


