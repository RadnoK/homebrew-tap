cask "router-menu" do
  version "0.6.1"
  sha256 "339b8a782a198db52d9a2c585882d5384c0ae62afbd8f5cd6849468bd11d7237"

  url "https://github.com/RadnoK/router-menu/releases/download/v#{version}/RouterMenu-#{version}.zip"
  name "Router Menu"
  desc "Menu bar status for ZTE modems and ASUS routers"
  homepage "https://github.com/RadnoK/router-menu"

  depends_on macos: :sonoma

  auto_updates true

  app "Router Menu.app"

  zap trash: [
    "~/Library/Application Support/zte-menu",
    "~/Library/Preferences/io.8lines.zte-menu.plist",
    "~/Library/Preferences/io.8lines.router-menu.plist",
  ]
end
