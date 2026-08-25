cask "router-menu" do
  version "0.5.0"
  sha256 "368cebf05dfa9402abbcd55d16a77f1bed10a7c9d97af4430bd0d4df6598b456"

  url "https://github.com/RadnoK/router-menu/releases/download/v#{version}/ZteMenu-#{version}.zip"
  name "Router Menu"
  desc "Menu bar status for ZTE modems and ASUS routers"
  homepage "https://github.com/RadnoK/router-menu"

  depends_on macos: :sonoma

  auto_updates true

  app "ZTE Menu.app"

  zap trash: [
    "~/Library/Application Support/zte-menu",
    "~/Library/Preferences/io.8lines.zte-menu.plist",
    "~/Library/Preferences/io.8lines.router-menu.plist",
  ]
end
