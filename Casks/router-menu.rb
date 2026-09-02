cask "router-menu" do
  version "0.5.3"
  sha256 "47ced3a6469d73804218950a71ff85ca9ced6d1d739f8222b99982c0662d13c4"

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
