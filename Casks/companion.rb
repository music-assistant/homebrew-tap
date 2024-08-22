cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.71"
  sha256 arm:   "6c66126b9556ad354a7d6b3920b2f916588f95db708cc30ab3616ff55f53538c",
         intel: "c09c0a6d3cec619b260b93a9d2a338c27229d33a5539c62038824aafa0044ffa"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
