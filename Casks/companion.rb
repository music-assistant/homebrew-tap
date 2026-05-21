cask "companion" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "e0d79dba10af72d1a6ef483ff6260807093c90cfd585cbd60d3c3907bc651293",
         intel: "1f9be7b1293443b428b624b932dd913230cd87a1eceb31aec4bd56173374982f"

  url "https://github.com/music-assistant/desktop-app/releases/download/#{version}/Music.Assistant_#{arch}.app.tar.gz",
      verified: "github.com/music-assistant/desktop-app/"
  name "Music Assistant"
  desc "Desktop app for Music Assistant"
  homepage "https://music-assistant.io/"

  app "Music Assistant.app"
end
