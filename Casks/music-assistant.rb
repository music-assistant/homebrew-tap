cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "b3e238d65c256433f5323f55544b085ec9ec5d8aee7be92adac455fe22fba1a4",
         intel: "8d318a3fd2e9a0e866093b7a64601f0ab0ecb6ffd90b7affce11ab6fe2df3fa7"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
