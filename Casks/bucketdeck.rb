cask "bucketdeck" do
  version "0.3.0"
  sha256 "1092b14da22b1733c65c606e95a2bb9a1b4209de9c7380dd3e1a15fb5d2e171d"

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
