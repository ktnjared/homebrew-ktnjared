# typed: strict
# frozen_string_literal: true

cask "daruma" do
  version "1.0"
  sha256 "37e5579915b291e0c237e24452f2492eb7894a81de11b51773edd358bfd1cb94"

  url "https://delivery.kadomaru.app/daruma/Daruma.dmg"
  name "Daruma"
  desc "Complete your goals more efficiently with the Daruma method"
  homepage "https://kadomaru.app/daruma/"

  livecheck do
    url :homepage
    strategy :page_match
  end

  zap trash: [
    "~/Library/Preferences/app.kadomaru.daruma.plist",
    "~/Library/Caches/app.kadomaru.daruma",
    "~/Library/Application Support/Daruma",
    "~/Library/Saved Application State/app.kadomaru.daruma.savedState",
  ]

  app "Daruma.app"
end
