cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "6530fd73537e36d7c3bffefec33e7a07b1f53fc1e0e11ea34f8a5de5841fb1e8",
         intel: "e9b36e157f0d18b068cd5dd1678fd146a7d33a76b256f63c42b9f4f04260da9f"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  app "Music Assistant.app"
end
