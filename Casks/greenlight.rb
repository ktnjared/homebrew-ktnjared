cask "greenlight" do
  version :latest
  sha256 :no_check

  url "https://github.com/unknownskl/greenlight/releases/latest/download/Greenlight-universal.dmg",
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
