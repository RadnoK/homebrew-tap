cask "zte-menu" do
  version "0.1.0"
  sha256 "5c64b9330ad35c7e876e312ed97864fe1aad775540729dee0c14cdde98a95a75"

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
