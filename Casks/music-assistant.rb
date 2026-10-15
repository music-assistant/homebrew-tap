cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "49a2887182397f9b6f5321d84532da2bb91d09e88f376412cc0e845463441891",
         intel: "cb12f23a40991625dfee3201ae649f09039e328f4ce3999c9cde5060aced8a0b"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
