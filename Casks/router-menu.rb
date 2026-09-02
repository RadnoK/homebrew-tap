cask "router-menu" do
  version "0.5.3"
  sha256 "c2100e1416fd46ff0671a1656738b3f632ae86a253c5292c114abd0e7ea1f42c"

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
