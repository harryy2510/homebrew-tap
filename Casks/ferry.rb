cask "ferry" do
  version "0.2.0"
  sha256 "bf4fb463c9a54022f5d683d1a0e99edfa7a34769833c06f04e60e47a6070d62c"

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
