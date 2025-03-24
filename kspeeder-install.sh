#!/bin/sh

PLATFORM=$1
if [ -z "$PLATFORM" ]; then
    KSPEEDER_FILE="iStoreEnhance.x86_64"
else
    case "$PLATFORM" in
        linux/386)
            KSPEEDER_FILE=""
            ;;
        linux/amd64)
            KSPEEDER_FILE="iStoreEnhance.x86_64"
            ;;
        linux/arm/v6)
            KSPEEDER_FILE="iStoreEnhance.arm"
            ;;
        linux/arm/v7)
            KSPEEDER_FILE="iStoreEnhance.arm"
            ;;
        linux/arm64|linux/arm64/v8)
            KSPEEDER_FILE="iStoreEnhance.aarch64"
            ;;
        linux/ppc64le)
            KSPEEDER_FILE=""
            ;;
        linux/s390x)
            KSPEEDER_FILE=""
            ;;
        *)
            KSPEEDER_FILE=""
            ;;
    esac
fi
[ -z "${KSPEEDER_FILE}" ] && echo "Error: Not supported OS Architecture" && exit 1

cp /dest/${KSPEEDER_FILE} /usr/bin/kspeeder

chmod +x /usr/bin/kspeeder

