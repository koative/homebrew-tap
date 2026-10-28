cask "openbucket" do
  version "0.2.1"
  sha256 "909e51bd4a8c2866926410fd6ca9a6f386025c696fb5f4f3d07e90176d826362"

  url "https://github.com/koative/openbucket/releases/download/v#{version}/OpenBucket-macOS.dmg"
  name "OpenBucket"
  desc "Native S3 browser"
  homepage "https://openbucket.koative.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "OpenBucket.app"

  zap trash: [
    "~/Library/Application Support/OpenBucket",
    "~/Library/Caches/dev.openbucket.app",
    "~/Library/HTTPStorages/dev.openbucket.app",
    "~/Library/Preferences/dev.openbucket.app.plist",
    "~/Library/Saved Application State/dev.openbucket.app.savedState",
  ]
end
