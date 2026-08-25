cask "router-menu" do
  version "0.4.1"
  sha256 "97cef11cae1ac4834b2d7403c3f29957be9405a69276b0ecfb54f040bc04b543"

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
