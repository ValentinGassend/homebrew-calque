cask "calque" do
  arch arm: "-arm64"

  version "0.1.2"
  sha256 arm:   "1fec09208b4f6b469d41e6127b9c5a2687acb7ccc7541ff4151b04dc60936142",
         intel: "2e7cac26b1575da9344b44455d7a173b2b16fa05d3c3d852be557c45959a36c6"

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
