cask "sharebeacon" do
  version "0.6"
  sha256 "96cbe0d2de69958be5cce02ed75e0b44c0c52da8c1fcab61dec6f70b6b2d791e"

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
