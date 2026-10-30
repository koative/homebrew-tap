cask "openbucket" do
  version "0.2.3"
  sha256 "9d52b0d4b470cd4081e37babd26ba4e8ff3ec34bc0f2d947633c037aaf4f0d87"

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
