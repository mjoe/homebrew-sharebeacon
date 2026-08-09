cask "sharebeacon" do
  version "0.5"
  sha256 "748d27e48e77555e383be8a0b2779f3bdc5e6671458514a06a27bb07c00348b2"

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
