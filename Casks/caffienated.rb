cask "caffienated" do
  version "0.3.0"
  sha256 "0111717fccf6bafb5cdc53e70a2cd66516c3fbbee96ca8eadf23f54fffdd912e"

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
