cask "bento" do
  version "1.1"
  sha256 "324f92bd21d98a5c530b5e2acbc8b3e778c22e0a2091f0716ebf4efe1c536b11"

  url "https://delivery.kadomaru.app/bento/Bento.dmg"
  name "Bento"
  desc "Drag and drop folders with .iconset extension to assemble .icns files"
  homepage "https://kadomaru.app/bento/"

  livecheck do
    url :homepage
    strategy :page_match
  end

  app "Bento.app"

  zap trash: [
    "~/Library/Caches/app.kadomaru.bento",
    "~/Library/Preferences/app.kadomaru.bento.plist",
  ]
end
