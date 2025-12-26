cask "tulip" do
  version "1.1"
  sha256 "3520eef337a7a5910ca9e543bb4e6d34437dbb3c6b665b6c68b8b8f04a5da8cc"

  url "https://delivery.kadomaru.app/tulip/Tulip.dmg"
  name "Tulip"
  desc "Generates a UUID and copies it to the clipboard"
  homepage "https://kadomaru.app/tulip/"

  livecheck do
    url :homepage
    strategy :page_match
  end

  zap trash: [
    "~/Library/Preferences/app.kadomaru.tulip.plist",
    "~/Library/Caches/app.kadomaru.tulip",
    "~/Library/Application Support/Tulip",
    "~/Library/Saved Application State/app.kadomaru.tulip.savedState",
  ]

  app "Tulip.app"
end
