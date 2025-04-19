cask "font-adwaita-mono-nf" do
    version "48.2-nf"
    sha256 "5030faea10ca79a2ab7e5754ae12494d71238d65744f149a2cc056902deef6f3"

    url "https://github.com/ktnjared/Adwaita-Mono-Nerd-Font/releases/download/#{version}/AdwaitaMonoNerdFont.zip"
    name "Adwaita Mono Nerd Font"
    desc "GNOMA Adwaita Font merged with complete Nerd Font glyphs"
    homepage "https://github.com/ktnjared/Adwaita-Mono-Nerd-Font/"
    license "OFL"

    livecheck do
        url :url
        strategy :github_latest
    end

    font "AdwaitaMonoNerdFont/AdwaitaMonoNerdFont-Bold.ttf"
    font "AdwaitaMonoNerdFont/AdwaitaMonoNerdFont-BoldItalic.ttf"
    font "AdwaitaMonoNerdFont/AdwaitaMonoNerdFont-Italic.ttf"
    font "AdwaitaMonoNerdFont/AdwaitaMonoNerdFont-Regular.ttf"
end
