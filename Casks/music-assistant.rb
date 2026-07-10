cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "e9df4556a5c1cd666d1588d606be440c39da8c44951cffd04d58694998562132",
         intel: "883a7f5d91c0aa47bbe37dec4c6d6ef11bc666d9bb0d1a86ff8529933c18d14c"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
