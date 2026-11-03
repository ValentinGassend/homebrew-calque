cask "calque" do
  arch arm: "-arm64"

  version "0.1.1"
  sha256 arm:   "789aa07b13750450365b10544f31aec10e79b28517a57a8e649cb760c78fff12",
         intel: "eb04cd8f0dadb331653d0ef85ecc32d429257ed7cdbf89c3db0659f7a424fb58"

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
