cask "remote-mac@beta" do
  version "1.2.0-beta.4"
  sha256 "7ccb92e8ce73e4552b39a283cf8e93ee912284d40b8d920d4f57deaac736f26b"

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
