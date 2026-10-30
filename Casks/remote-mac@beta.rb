cask "remote-mac@beta" do
  version "1.2.0-beta.3"
  sha256 "8a93aa3d96670dba4b967afc6a4bc143455e8aa93d6d7985e636eb5a0340d7e3"

  url "https://github.com/RadnoK/remote-mac/releases/download/v#{version}/RemoteMac-#{version}.zip"
  name "RemoteMac Beta"
  desc "Menu bar launcher for Screen Sharing and SSH on your Tailscale Macs"
  homepage "https://github.com/RadnoK/remote-mac"

  depends_on macos: :sequoia

  auto_updates true

  conflicts_with cask: "remote-mac"

  app "RemoteMac.app"

  zap trash: [
    "~/Library/Application Support/io.eightlines.remotemac",
    "~/Library/Preferences/io.eightlines.remotemac.plist",
    "~/Library/Caches/io.eightlines.remotemac",
  ]
end
