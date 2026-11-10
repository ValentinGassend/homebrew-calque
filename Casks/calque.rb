cask "calque" do
  arch arm: "-arm64"

  version "0.1.3"
  sha256 arm:   "13133c3ccb82913895fc11521c69dc75e45aec8ba9a8d3c0509a28f9a0b6ee19",
         intel: "dec4fc435fc1a505762ba8fea4a52e7128509a2996de142e7acb5e68e6174a31"

  url "https://calque.valentingassend.com/telechargements/Calque-#{version}#{arch}.dmg"
  name "Calque"
  desc "Clipboard history and search across installed cloud drives"
  homepage "https://calque.valentingassend.com/"

  livecheck do
    skip "No public version feed yet"
  end

  depends_on macos: :ventura

  app "Calque.app"

  uninstall quit: "com.valentingassend.calque"

  zap trash: [
    "~/Library/Application Support/Calque",
    "~/Library/Application Support/Fast Copy",
    "~/Library/Caches/com.valentingassend.calque",
    "~/Library/Caches/com.valentingassend.calque.ShipIt",
    "~/Library/HTTPStorages/com.valentingassend.calque",
    "~/Library/Logs/Calque",
    "~/Library/Preferences/com.valentingassend.calque.plist",
    "~/Library/Saved Application State/com.valentingassend.calque.savedState",
  ]
end
