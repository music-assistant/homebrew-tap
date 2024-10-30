#!/usr/bin/env bash
RELEASES=('AARCH64_SHA256' 'X64_SHA256')

CURL_RESULT=$(curl -fsL \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/music-assistant/companion/releases) || exit 1
TAG_NAME=$(echo "${CURL_RESULT}" | jq '.[0].tag_name')

VERSION_CUT=$(echo "${TAG_NAME}" | cut -d"v" -f 2) || exit 1
MUSIC_COMPANION_VERSION=$(echo "${VERSION_CUT}" | cut -d"\"" -f 1) || exit 1
export MUSIC_COMPANION_VERSION

for i in "${RELEASES[@]}"
do
    ARCH_PART=$(echo "${i}" | cut -f1 -d_) || exit 1
    ARCH=$(echo "${ARCH_PART}" | tr '[:upper:]' '[:lower:]') || exit 1
    URL="https://github.com/music-assistant/companion/releases/download/v${MUSIC_COMPANION_VERSION}/Music.Assistant.Companion_${ARCH}.app.tar.gz"
    curl -sLO "${URL}"

    SHA_RESULT=$(shasum -a 256 "Music.Assistant.Companion_${ARCH}.app.tar.gz") || exit 1
    SHA_FILE=$(echo "${SHA_RESULT}" | cut -d" " -f 1) || exit 1

    export "${i}"="${SHA_FILE}"
done

envsubst < companion.template.rb > Casks/companion.rb
