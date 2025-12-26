cask "greenlight" do
    version "2.4.1"
    sha256 "7c2716ecae1ea0fbb9043e480de4c66f06feb449504fec59e308e21dbe8bb914"

    url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg",
      verified: "github.com/unknownskl/greenlight/"
  name "Greenlight"
  desc "Open-source client for xCloud and Xbox home streaming"
  homepage "https://github.com/unknownskl/greenlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  zap trash: [
    "~/Library/Application Support/Greenlight",
    "~/Library/Preferences/com.unknownskl.greenlight.plist",
    "~/Library/Caches/com.unknownskl.greenlight",
    "~/Library/Logs/Greenlight",
    "~/Library/Saved Application State/com.unknownskl.greenlight.savedState",
  ]

  app "Greenlight.app"
end
