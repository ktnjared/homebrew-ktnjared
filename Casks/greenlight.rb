cask "greenlight" do
    version "2.4.2"
    sha256 "2a170f6b5ec6d9841c6a239ee72d255c4083f329470cb27ba72747352dbccd6d"

    url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg",
      verified: "github.com/unknownskl/greenlight/"
  name "Greenlight"
  desc "Open-source client for xCloud and Xbox home streaming"
  homepage "https://github.com/unknownskl/greenlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Application Support/Greenlight",
    "~/Library/Preferences/com.unknownskl.greenlight.plist",
    "~/Library/Caches/com.unknownskl.greenlight",
    "~/Library/Logs/Greenlight",
    "~/Library/Saved Application State/com.unknownskl.greenlight.savedState",
  ]

  app "Greenlight.app"
end
