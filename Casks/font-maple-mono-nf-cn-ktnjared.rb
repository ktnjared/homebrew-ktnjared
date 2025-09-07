cask "font-maple-mono-nf-cn-ktnjared" do
  version "1757259363"
  sha256 :no_check # You can replace this with the actual SHA256 if you want to lock it down

  url "https://github.com/ktnjared/font-maple-mono-nf-cn-ktnjared/releases/download/v#{version}/MapleMono-NF-CN-ktnjared-v#{version}.zip",
      verified: "github.com/ktnjared/font-maple-mono-nf-cn-ktnjared/"
  name "Maple Mono NF CN (ktnjared)"
  desc "Customized Maple Mono font with Nerd Font and Simplified Chinese support"
  homepage "https://github.com/ktnjared/font-maple-mono-nf-cn-ktnjared"

  font "MapleMono-NFMono-CN-Bold.ttf"
  font "MapleMono-NFMono-CN-BoldItalic.ttf"
  font "MapleMono-NFMono-CN-ExtraBold.ttf"
  font "MapleMono-NFMono-CN-ExtraBoldItalic.ttf"
  font "MapleMono-NFMono-CN-ExtraLight.ttf"
  font "MapleMono-NFMono-CN-ExtraLightItalic.ttf"
  font "MapleMono-NFMono-CN-Italic.ttf"
  font "MapleMono-NFMono-CN-Light.ttf"
  font "MapleMono-NFMono-CN-LightItalic.ttf"
  font "MapleMono-NFMono-CN-Medium.ttf"
  font "MapleMono-NFMono-CN-MediumItalic.ttf"
  font "MapleMono-NFMono-CN-Regular.ttf"
  font "MapleMono-NFMono-CN-SemiBold.ttf"
  font "MapleMono-NFMono-CN-SemiBoldItalic.ttf"
  font "MapleMono-NFMono-CN-Thin.ttf"
  font "MapleMono-NFMono-CN-ThinItalic.ttf"

  caveats <<~EOS
    This font includes Nerd Font glyphs and Simplified Chinese support.
    Installed to ~/Library/Fonts and available system-wide.
  EOS
end
