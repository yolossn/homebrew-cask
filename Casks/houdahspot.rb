cask "houdahspot" do
  version "6.2.2,750"
  sha256 "e7ed5f0044b042f8e94ad08b4ae953eff753ed0cb03e30f1d0cefd91c16173b8"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version.csv.first}.zip"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  livecheck do
    url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "HoudahSpot.app"

  zap trash: [
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/Application Support/com.houdah.HoudahSpot4",
    "~/Library/Caches/com.houdah.HoudahSpot4",
    "~/Library/Containers/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Containers/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/HTTPStorages/com.houdah.HoudahSpot4",
    "~/Library/Mail/Bundles/HoudahSpotMailPlugin.mailbundle",
    "~/Library/Preferences/com.houdah.HoudahSpot4.plist",
  ]
end
