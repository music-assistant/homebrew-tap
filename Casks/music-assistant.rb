cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  depends_on :macos

  version "0.5.0"
  sha256 arm:   "bef193618413df444c51c812739d2a111b8ce37cf547fdd6e03d6c26d7c55e16",
         intel: "656db3a32e815ad06ee28363ae18dd854ea35451638fcb128689c7a084e4b29d"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  app "Music Assistant.app"
end
