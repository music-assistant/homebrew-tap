cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.45"
  sha256 arm:   "b4c1fc54a4c741e72276125c51584b3d25c9e636e59b1fce71d7fddad51acc69",
         intel: "b4c1fc54a4c741e72276125c51584b3d25c9e636e59b1fce71d7fddad51acc69"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
