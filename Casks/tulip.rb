cask 'tulip' do
    version '1.1'
    sha256  '3520eef337a7a5910ca9e543bb4e6d34437dbb3c6b665b6c68b8b8f04a5da8cc'

    url 'https://delivery.kadomaru.app/tulip/Tulip.dmg'
    name 'Tulip'
    homepage 'https://kadomaru.app/tulip/'

    app "tulip#{version.before_comma.no_dots}/Tulip.app"
end
