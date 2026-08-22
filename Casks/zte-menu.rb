cask "zte-menu" do
  version "0.2.1"
  sha256 "d850580d17424ef10fb3a809eaf43ebfceb8924050ccd08750ebb44391fa72bb"

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
