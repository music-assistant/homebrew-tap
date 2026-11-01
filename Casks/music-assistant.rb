cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "b32714630a1028825997e3d937e2ca923d8fe9da100a1e316ebe22008a280423",
         intel: "99173bd955a988c13b6d06d3d22bb7fd5f547a8b362dd417e9cf4cc7890d927a"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
