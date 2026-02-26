cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "97ff5c20f3551100040d35b1811eac263c72df51b4ccc96451f3b5431cab32d8",
         intel: "e152c36465697b02705ba5b40bc815e471d079b2cfe9ac1bc0717ea883a0c04c"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  app "Music Assistant.app"
end
