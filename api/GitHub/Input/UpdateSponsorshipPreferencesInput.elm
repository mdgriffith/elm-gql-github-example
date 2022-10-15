module GitHub.Input.UpdateSponsorshipPreferencesInput exposing (UpdateSponsorshipPreferencesInput, clientMutationId, input, null, privacyLevel, receiveEmails, sponsorId, sponsorLogin, sponsorableId, sponsorableLogin)

{-| 
## Creating an input

@docs input, UpdateSponsorshipPreferencesInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, privacyLevel, receiveEmails, sponsorableLogin, sponsorableId, sponsorLogin, sponsorId
-}


import GitHub
import GitHub.Enum.SponsorshipPrivacy
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateSponsorshipPreferencesInput =
    GitHub.Input.UpdateSponsorshipPreferencesInput


input : UpdateSponsorshipPreferencesInput
input =
    GraphQL.Engine.inputObject "UpdateSponsorshipPreferencesInput"


sponsorId :
    GitHub.Id
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
sponsorId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorLogin :
    String
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
sponsorLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


sponsorableId :
    GitHub.Id
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
sponsorableId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorableLogin :
    String
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
sponsorableLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


receiveEmails :
    Bool
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
receiveEmails newArg_ inputObj_ =
    GraphQL.Engine.addField
        "receiveEmails"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


privacyLevel :
    GitHub.Enum.SponsorshipPrivacy.SponsorshipPrivacy
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
privacyLevel newArg_ inputObj_ =
    GraphQL.Engine.addField
        "privacyLevel"
        "SponsorshipPrivacy"
        (GitHub.Enum.SponsorshipPrivacy.encode newArg_)
        inputObj_


clientMutationId :
    String
    -> UpdateSponsorshipPreferencesInput
    -> UpdateSponsorshipPreferencesInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { sponsorId :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , sponsorLogin :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , sponsorableId :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , sponsorableLogin :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , receiveEmails :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , privacyLevel :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    , clientMutationId :
        UpdateSponsorshipPreferencesInput -> UpdateSponsorshipPreferencesInput
    }
null =
    { sponsorId =
        \inputObj ->
            GraphQL.Engine.addField "sponsorId" "ID" Json.Encode.null inputObj
    , sponsorLogin =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorLogin"
                "String"
                Json.Encode.null
                inputObj
    , sponsorableId =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorableId"
                "ID"
                Json.Encode.null
                inputObj
    , sponsorableLogin =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorableLogin"
                "String"
                Json.Encode.null
                inputObj
    , receiveEmails =
        \inputObj ->
            GraphQL.Engine.addField
                "receiveEmails"
                "Boolean"
                Json.Encode.null
                inputObj
    , privacyLevel =
        \inputObj ->
            GraphQL.Engine.addField
                "privacyLevel"
                "SponsorshipPrivacy"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


