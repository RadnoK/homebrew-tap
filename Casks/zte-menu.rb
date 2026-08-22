cask "zte-menu" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/RadnoK/zte-menu/releases/download/v#{version}/ZteMenu-#{version}.zip"
  name "ZTE Menu"
  desc "Menu bar app showing ZTE U50 5G modem status"
  homepage "https://github.com/RadnoK/zte-menu"

  depends_on macos: ">= :sonoma"

  app "ZTE Menu.app"

  zap trash: [
    "~/Library/Application Support/zte-menu",
    "~/Library/Preferences/io.8lines.zte-menu.plist",
  ]
end
