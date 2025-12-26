# typed: strict
# frozen_string_literal: true

cask "mousecape" do
  version "1813"
  sha256 "969ec7146af527e8900945950e9945f2b15c4eb19ff835f86da6332ec522ffd2"

  url "https://github.com/alexzielenski/Mousecape/releases/download/#{version}/Mousecape_#{version}.zip",
      verified: "github.com/alexzielenski/Mousecape/"
  name "Mousecape"
  desc "Cursor Manager for OSX"
  homepage "https://github.com/alexzielenski/Mousecape"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/Mousecape",
    "~/Library/Preferences/com.alexzielenski.Mousecape.plist",
    "~/Library/Caches/com.alexzielenski.Mousecape",
    "~/Library/Saved Application State/com.alexzielenski.Mousecape.savedState",
  ]

  app "Mousecape.app"
end
