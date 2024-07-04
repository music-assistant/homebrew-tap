cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.67"
  sha256 arm:   "e774cd0527c459df2d72abb7ad199e21c09b87aa58524d5af68ccf9f7a2e4cd1",
         intel: "abd528803b61b47bd3f37809cf1d307da8449190d049ed19f1474e7c69b5abd6"

  url "https://github.com/music-assistant/companion/releases/download/v#{version}/Music.Assistant.Companion_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/companion/"
  name "Music-Assistant-Companion"
  desc "App for music assistant"
  homepage "https://music-assistant.github.io/"

  app "Music Assistant Companion.app"
end
