cask "music-assistant" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.8"
  sha256 arm:   "00fb0d91d9072fc55ad85bf7bf7505b45f85c42939d17a050e291493b1c7ac4f",
         intel: "331cb38c58ede1b8482329f8c75c1671865dc57b63365fc2d71f475ebeb20e8e"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{version}_#{arch}.app.tar.gz"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  depends_on :macos

  app "Music Assistant.app"
end
