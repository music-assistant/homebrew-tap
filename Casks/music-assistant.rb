cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "587fe137281284f9010b9e3d5988fdb2d1c72851e49a0941ba80e6f94581ca61",
         intel: "8ebea1df52c8d7c4b332c029b29def8d9446e724e5d2e1f872b7b66841544680"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
