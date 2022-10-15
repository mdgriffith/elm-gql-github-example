module GitHub.Input.CreateEnterpriseOrganizationInput exposing (CreateEnterpriseOrganizationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, CreateEnterpriseOrganizationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateEnterpriseOrganizationInput =
    GitHub.Input.CreateEnterpriseOrganizationInput


input :
    { enterpriseId : GitHub.Id
    , login : String
    , profileName : String
    , billingEmail : String
    , adminLogins : List String
    }
    -> CreateEnterpriseOrganizationInput
input requiredArgs =
    GraphQL.Engine.addField
        "adminLogins"
        "[String!]!"
        (Json.Encode.list Json.Encode.string requiredArgs.adminLogins)
        (GraphQL.Engine.addField
            "billingEmail"
            "String!"
            (Json.Encode.string requiredArgs.billingEmail)
            (GraphQL.Engine.addField
                "profileName"
                "String!"
                (Json.Encode.string requiredArgs.profileName)
                (GraphQL.Engine.addField
                    "login"
                    "String!"
                    (Json.Encode.string requiredArgs.login)
                    (GraphQL.Engine.addField
                        "enterpriseId"
                        "ID!"
                        (GitHub.id.encode requiredArgs.enterpriseId)
                        (GraphQL.Engine.inputObject
                            "CreateEnterpriseOrganizationInput"
                        )
                    )
                )
            )
        )


clientMutationId :
    String
    -> CreateEnterpriseOrganizationInput
    -> CreateEnterpriseOrganizationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        CreateEnterpriseOrganizationInput -> CreateEnterpriseOrganizationInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


