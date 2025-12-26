class Qopy < Formula
  desc "Fixed clipboard manager for Windows, macOS & Linux"
  homepage "https://github.com/0PandaDEV/Qopy"
  url "https://github.com/0PandaDEV/Qopy/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "fb2f0461e35a61df30b3f528d8804797e57acba7910f04c6dd46af0a01baad46"
  license "AGPL-3.0"
  head "https://github.com/0PandaDEV/Qopy.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"qopy"
    assert_match "qopy", shell_output("#{bin}/qopy --help 2>&1")
  end
end
