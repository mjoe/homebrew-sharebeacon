cask "sharebeacon" do
  version "0.7"
  sha256 "8857b4a9971c187355293a66620191482895ac8dbc8c6b5c091ccb499c14d742"

  url "https://github.com/mjoe/sharebeacon/releases/download/v#{version}/ShareBeacon-#{version}.zip"
  name "ShareBeacon"
  desc "Keep SMB shares available and restore Finder sidebar favorites"
  homepage "https://github.com/mjoe/sharebeacon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "ShareBeacon.app"

  zap trash: [
    "~/Library/Logs/sharebeacon.log",
    "~/Library/Preferences/org.mjoe.sharebeacon.plist",
  ]

  caveats <<~EOS
    ShareBeacon runs from the menu bar. Open Settings from the menu bar icon to
    configure SMB shares.
  EOS
end
