cask "router-menu" do
  version "0.6.2"
  sha256 "38b28ea600192fa09026529cfae761f29d0161f83937d8bed6a9de9d1bdc406a"

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
