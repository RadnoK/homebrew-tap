cask "zte-menu" do
  version "0.3.0"
  sha256 "3e43c095bb1c2652bb62cbfba64d18b5cae821fc6d526af4e584c6a0602e58a9"

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
