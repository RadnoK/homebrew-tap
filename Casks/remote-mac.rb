cask "remote-mac" do
  version "1.0.0"
  sha256 "955c49079f0b0f4c78fa14b48739289210fca470fb8242a3a78161c216b3a71f"

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
