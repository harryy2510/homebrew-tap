cask "caffienated" do
  version "0.2.0"
  sha256 "1acc98725d91638b1d35074b6a69db56a89d3aa7ae9195a169802ad1ebf3e4ae"

  url "https://release.utilities.studio/caffienated/v#{version}/Caffienated_#{version}_universal.dmg"
  name "Caffienated"
  desc "Keep your computer awake from the menu bar or the terminal"
  homepage "https://utilities.studio/caffienated"

  livecheck do
    url "https://release.utilities.studio/caffienated/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Caffienated.app"
  binary "#{appdir}/Caffienated.app/Contents/MacOS/caffienated"

  uninstall quit: "studio.utilities.caffienated"

  zap trash: [
    "~/Library/Application Support/studio.utilities.caffienated",
    "~/Library/Caches/studio.utilities.caffienated",
    "~/Library/Logs/studio.utilities.caffienated",
    "~/Library/WebKit/studio.utilities.caffienated",
  ]
end
