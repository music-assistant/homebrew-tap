cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "${MUSIC_COMPANION_VERSION}"
  sha256 arm:   "${AARCH64_SHA256}",
         intel: "${X64_SHA256}"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
