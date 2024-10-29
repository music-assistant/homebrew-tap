cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.74"
  sha256 arm:   "a47b47d4ac238c95fe76ae94e0da64505571cc8d0e46726ef96e0ef6c83dcb50",
         intel: "e7d011366b1a04ee533c9f79d913f8a47f84e69703bb17579574655d249a5275"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
