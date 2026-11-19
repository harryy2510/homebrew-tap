cask "ferry" do
  version "0.3.0"
  sha256 "08caba53517c0acef9b24b06fccb3b30ad232bbbc0cb8238f708e5d04b0055e7"

  url "https://release.utilities.studio/ferry/v#{version}/Ferry_#{version}_universal.dmg"
  name "Ferry"
  desc "Open local apps on your Wi-Fi, a quick public link or your own domain"
  homepage "https://utilities.studio/ferry"

  livecheck do
    url "https://release.utilities.studio/ferry/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Ferry.app"
  binary "#{appdir}/Ferry.app/Contents/MacOS/ferry"
end
