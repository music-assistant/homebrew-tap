cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.9"
  sha256 arm:   "d35fa3d0941302e2bb979b2ea07b1c7c3e3ba73edf71c3a7812b3fbf3dbb2b26",
         intel: "c588ece3b523777a248087e7af39d54c80d28620e65e15c4fd1716da29a47f70"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  app "Music Assistant.app"
end
