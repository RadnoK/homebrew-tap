cask "router-menu" do
  version "0.7.0"
  sha256 "7813bfa85d0f1e8015f530181f38a887ed03312eb55fba6235d7815093a5c417"

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
