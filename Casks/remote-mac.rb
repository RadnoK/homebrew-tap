cask "remote-mac" do
  version "1.0.0"
  sha256 "0ad52a4118f4b7c15f63cad9381461f645c89db876416f596c9eee1299487290"

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
