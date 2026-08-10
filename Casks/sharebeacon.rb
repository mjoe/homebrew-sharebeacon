cask "sharebeacon" do
  version "0.5"
  sha256 "7e8a76674c6dabc49d25fb223375ad5d008f6cdad30aa0d4b6625ce692f26d91"

  url "https://github.com/mjoe/sharebeacon/releases/download/v#{version}/ShareBeacon-#{version}.zip"
  name "ShareBeacon"
  desc "Keep SMB shares available and restore Finder sidebar favorites"
  homepage "https://github.com/mjoe/sharebeacon"

  app "ShareBeacon.app"

  caveats <<~EOS
    ShareBeacon runs from the menu bar. Open Settings from the menu bar icon to
    configure SMB shares.
  EOS
end
