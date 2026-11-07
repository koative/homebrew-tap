cask "bucketdeck" do
  version "0.3.1"
  sha256 "0c9050cffb65634ad4aeb65245238ac2e86d7be361679dc7bbb4d12cfc4a5eb4"

  url "https://github.com/koative/bucketdeck/releases/download/v#{version}/Bucketdeck-macOS.dmg"
  name "Bucketdeck"
  desc "Native S3 browser"
  homepage "https://bucketdeck.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Bucketdeck.app"

  # The app keeps its data under its earlier identifiers until a later release moves it.
  zap trash: [
    "~/Library/Application Support/OpenBucket",
    "~/Library/Caches/dev.openbucket.app",
    "~/Library/HTTPStorages/dev.openbucket.app",
    "~/Library/Preferences/dev.openbucket.app.plist",
    "~/Library/Saved Application State/dev.openbucket.app.savedState",
  ]
end
