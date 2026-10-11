cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "67fccdad7851ab75531a51528fc725577dcf31bc9031b8f8117358239f08474c",
         intel: "ed0f46effe0d6d6367681e8a9b62c093dd6085ddf27043a95303a22ebe1c1d7c"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
