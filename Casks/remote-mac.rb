cask "remote-mac" do
  version "1.1.1"
  sha256 "6441d148fe4f1393dc5f010a3b7cf610c49648897ea150f8dca73929278c3f59"

  url "https://github.com/RadnoK/remote-mac/releases/download/v#{version}/RemoteMac-#{version}.zip"
  name "RemoteMac"
  desc "Menu bar launcher for Screen Sharing and SSH on your Tailscale Macs"
  homepage "https://github.com/RadnoK/remote-mac"

  depends_on macos: :sequoia

  auto_updates true

  app "RemoteMac.app"

  zap trash: [
    "~/Library/Application Support/io.eightlines.remotemac",
    "~/Library/Preferences/io.eightlines.remotemac.plist",
    "~/Library/Caches/io.eightlines.remotemac",
  ]
end
