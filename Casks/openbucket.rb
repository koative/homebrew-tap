cask "openbucket" do
  version "0.2.2"
  sha256 "37f53d25b3065b5c708836641999e20147d77938404230e8de105eaccfc53097"

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
