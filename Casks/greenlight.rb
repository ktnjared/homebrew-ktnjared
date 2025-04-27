cask "greenlight" do
    version "2.3.2"
    sha256  "e4b84bd0efbce6edacfd3e81a17c634da827674a7f18e3fc72fc2880e8167c29"

    url "https://github.com/unknownskl/greenlight/releases/download/v#{version}/Greenlight-#{version}-universal.dmg"
    name "Greenlight"
    desc "Greenlight is an open-source client for xCloud and Xbox home streaming made in Typescript."
    homepage "https://github.com/unknownskl/greenlight"

    app "Greenlight.app"
    # font "CASKFONTNAME"
end
