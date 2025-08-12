cask "mkvtoolnix-gui" do
  version "94.0"
  sha256 :no_check

  url "https://github.com/your-username/homebrew-mkvtoolnix-gui/releases/latest/download/MKVToolNix-GUI.dmg"
  name "MKVToolNix GUI"
  desc "Matroska media files manipulation tools with GUI"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MKVToolNix-GUI.app"

  zap trash: [
    "~/Library/Preferences/org.bunkus.mkvtoolnix-gui.plist",
    "~/Library/Saved Application State/org.bunkus.mkvtoolnix-gui.savedState",
  ]
end