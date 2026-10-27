cask "calque" do
  arch arm: "-arm64", intel: ""

  version "0.1.0"
  sha256 arm:   "b8eb5c69653ec92c863fac96d1c2696e39e19452b0455b76a65a1752e8b9e470",
         intel: "73157219c89fcf8e6c7eee04d0d2544dddd6622245299c81c1a463f31d828680"

  url "https://calque.valentingassend.com/telechargements/Calque-#{version}#{arch}.dmg"
  name "Calque"
  desc "Clipboard history and search across installed cloud drives"
  homepage "https://calque.valentingassend.com/"

  livecheck do
    skip "No public version feed yet"
  end

  depends_on macos: ">= :monterey"

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
