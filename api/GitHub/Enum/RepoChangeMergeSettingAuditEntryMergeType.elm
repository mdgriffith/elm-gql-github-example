module GitHub.Enum.RepoChangeMergeSettingAuditEntryMergeType exposing (RepoChangeMergeSettingAuditEntryMergeType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepoChangeMergeSettingAuditEntryMergeType
-}


import Json.Decode
import Json.Encode


type RepoChangeMergeSettingAuditEntryMergeType
    = MERGE
    | REBASE
    | SQUASH


all : List RepoChangeMergeSettingAuditEntryMergeType
all =
    [ MERGE, REBASE, SQUASH ]


decoder : Json.Decode.Decoder RepoChangeMergeSettingAuditEntryMergeType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "MERGE" ->
                    Json.Decode.succeed MERGE

                "REBASE" ->
                    Json.Decode.succeed REBASE

                "SQUASH" ->
                    Json.Decode.succeed SQUASH

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepoChangeMergeSettingAuditEntryMergeType -> Json.Encode.Value
encode val =
    case val of
        MERGE ->
            Json.Encode.string "MERGE"

        REBASE ->
            Json.Encode.string "REBASE"

        SQUASH ->
            Json.Encode.string "SQUASH"


