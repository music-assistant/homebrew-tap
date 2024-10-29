cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.74"
  sha256 arm:   "463ee8245e8a93c569158617e14e76444b0d761c5a6025285c6f368292dfa2a2",
         intel: "c0b0759f38abc9267720a662c53406b3365ef9893ea9bbb02729037179134ddd"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
