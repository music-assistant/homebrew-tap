#!/usr/bin/env bash
RELEASES=('AARCH64_SHA256' 'X64_SHA256')

TAG_NAME=$(curl -fsL \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/music-assistant/companion/releases | jq '.[0].tag_name')

MUSIC_COMPANION_VERSION=$(echo "${TAG_NAME}" | cut -d"v" -f 2 | cut -d"\"" -f 1)
export MUSIC_COMPANION_VERSION

for i in "${RELEASES[@]}"
do
    ARCH=$(echo "${i}" | cut -f1 -d_ | tr '[:upper:]' '[:lower:]')
    URL="https://github.com/music-assistant/companion/releases/download/v${MUSIC_COMPANION_VERSION}/Music.Assistant.Companion_${ARCH}.app.tar.gz"
    curl -sLO "${URL}"

    SHA_FILE=$(shasum -a 256 "Music.Assistant.Companion_${ARCH}.app.tar.gz" | cut -d" " -f 1)

    export "${i}"="${SHA_FILE}"
done

envsubst < companion.template.rb > Casks/companion.rb
