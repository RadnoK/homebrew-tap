cask "zte-menu" do
  version "0.4.1"
  sha256 "97cef11cae1ac4834b2d7403c3f29957be9405a69276b0ecfb54f040bc04b543"

  url "https://github.com/RadnoK/zte-menu/releases/download/v#{version}/ZteMenu-#{version}.zip"
  name "ZTE Menu"
  desc "Menu bar app showing ZTE U50 5G modem status"
  homepage "https://github.com/RadnoK/zte-menu"

  depends_on macos: :sonoma

  auto_updates true

  app "ZTE Menu.app"

  zap trash: [
    "~/Library/Application Support/zte-menu",
    "~/Library/Preferences/io.8lines.zte-menu.plist",
  ]
end
