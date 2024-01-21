cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.31"
  sha256 arm:   "0c4d4afc31ded13fafdc4b58b6ae9447856c706cad34e2b5c5cc7161213f50c7",
         intel: "0c4d4afc31ded13fafdc4b58b6ae9447856c706cad34e2b5c5cc7161213f50c7"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "music-assistant-companion.app"
end
