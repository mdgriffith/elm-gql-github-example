module GitHub.Enum.GitSignatureState exposing (GitSignatureState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, GitSignatureState
-}


import Json.Decode
import Json.Encode


type GitSignatureState
    = VALID
    | INVALID
    | MALFORMED_SIG
    | UNKNOWN_KEY
    | BAD_EMAIL
    | UNVERIFIED_EMAIL
    | NO_USER
    | UNKNOWN_SIG_TYPE
    | UNSIGNED
    | GPGVERIFY_UNAVAILABLE
    | GPGVERIFY_ERROR
    | NOT_SIGNING_KEY
    | EXPIRED_KEY
    | OCSP_PENDING
    | OCSP_ERROR
    | BAD_CERT
    | OCSP_REVOKED


all : List GitSignatureState
all =
    [ VALID
    , INVALID
    , MALFORMED_SIG
    , UNKNOWN_KEY
    , BAD_EMAIL
    , UNVERIFIED_EMAIL
    , NO_USER
    , UNKNOWN_SIG_TYPE
    , UNSIGNED
    , GPGVERIFY_UNAVAILABLE
    , GPGVERIFY_ERROR
    , NOT_SIGNING_KEY
    , EXPIRED_KEY
    , OCSP_PENDING
    , OCSP_ERROR
    , BAD_CERT
    , OCSP_REVOKED
    ]


decoder : Json.Decode.Decoder GitSignatureState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "VALID" ->
                        Json.Decode.succeed VALID

                    "INVALID" ->
                        Json.Decode.succeed INVALID

                    "MALFORMED_SIG" ->
                        Json.Decode.succeed MALFORMED_SIG

                    "UNKNOWN_KEY" ->
                        Json.Decode.succeed UNKNOWN_KEY

                    "BAD_EMAIL" ->
                        Json.Decode.succeed BAD_EMAIL

                    "UNVERIFIED_EMAIL" ->
                        Json.Decode.succeed UNVERIFIED_EMAIL

                    "NO_USER" ->
                        Json.Decode.succeed NO_USER

                    "UNKNOWN_SIG_TYPE" ->
                        Json.Decode.succeed UNKNOWN_SIG_TYPE

                    "UNSIGNED" ->
                        Json.Decode.succeed UNSIGNED

                    "GPGVERIFY_UNAVAILABLE" ->
                        Json.Decode.succeed GPGVERIFY_UNAVAILABLE

                    "GPGVERIFY_ERROR" ->
                        Json.Decode.succeed GPGVERIFY_ERROR

                    "NOT_SIGNING_KEY" ->
                        Json.Decode.succeed NOT_SIGNING_KEY

                    "EXPIRED_KEY" ->
                        Json.Decode.succeed EXPIRED_KEY

                    "OCSP_PENDING" ->
                        Json.Decode.succeed OCSP_PENDING

                    "OCSP_ERROR" ->
                        Json.Decode.succeed OCSP_ERROR

                    "BAD_CERT" ->
                        Json.Decode.succeed BAD_CERT

                    "OCSP_REVOKED" ->
                        Json.Decode.succeed OCSP_REVOKED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : GitSignatureState -> Json.Encode.Value
encode val =
    case val of
        VALID ->
            Json.Encode.string "VALID"

        INVALID ->
            Json.Encode.string "INVALID"

        MALFORMED_SIG ->
            Json.Encode.string "MALFORMED_SIG"

        UNKNOWN_KEY ->
            Json.Encode.string "UNKNOWN_KEY"

        BAD_EMAIL ->
            Json.Encode.string "BAD_EMAIL"

        UNVERIFIED_EMAIL ->
            Json.Encode.string "UNVERIFIED_EMAIL"

        NO_USER ->
            Json.Encode.string "NO_USER"

        UNKNOWN_SIG_TYPE ->
            Json.Encode.string "UNKNOWN_SIG_TYPE"

        UNSIGNED ->
            Json.Encode.string "UNSIGNED"

        GPGVERIFY_UNAVAILABLE ->
            Json.Encode.string "GPGVERIFY_UNAVAILABLE"

        GPGVERIFY_ERROR ->
            Json.Encode.string "GPGVERIFY_ERROR"

        NOT_SIGNING_KEY ->
            Json.Encode.string "NOT_SIGNING_KEY"

        EXPIRED_KEY ->
            Json.Encode.string "EXPIRED_KEY"

        OCSP_PENDING ->
            Json.Encode.string "OCSP_PENDING"

        OCSP_ERROR ->
            Json.Encode.string "OCSP_ERROR"

        BAD_CERT ->
            Json.Encode.string "BAD_CERT"

        OCSP_REVOKED ->
            Json.Encode.string "OCSP_REVOKED"


