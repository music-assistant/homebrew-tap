cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "fc071cac2cd1e496226448ba8fd1d17f12dc45b0725691a94aba8e2827b047c7",
         intel: "1785c91f11272909ca05026dc3cbc28f7354a34c23a30438b1801f8a09c4a0f0"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
