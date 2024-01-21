cask "companion" do
  arch arm: "arm64", intel: "x64"

  name "Music Assistant Companion"
  desc "Music Assistant Companion app"
  homepage "https://music-assistant.github.io/"

  version "0.0.31"
  sha256 arm: "bla bla"
         intel: "bla bla"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz"

  app "music-assistant-companion.app"
end
