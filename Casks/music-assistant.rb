cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.9"
  sha256 arm:   "4edfe02a02aeebc0df941349f4aab2ad39a69845cccce5c78a9f1539a8edc784",
         intel: "e0813bf02709a0c2f2edc954180d4b5430e1d878e7153f76d7c0161d8aee050f"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
