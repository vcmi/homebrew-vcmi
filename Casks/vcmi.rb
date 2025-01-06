cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.2"
  sha256 arm:   "f40f12a4a07c8636b6c46f0562891427da64c2c5e3605b87820f20d95b5a5d12",
         intel: "8ede68c8dd0511a805af320a66be26f302b737669472596a4406567c97f12bef"

  url "https://github.com/vcmi/vcmi/releases/download/#{version}/VCMI-macOS-#{arch}.dmg",
      verified: "github.com/vcmi/vcmi/"
  name "VCMI"
  desc "Open-source engine for Heroes of Might & Magic III"
  homepage "https://vcmi.eu/"

  depends_on macos: ">= :high_sierra"

  app "VCMI.app"

  zap trash: [
    "~/Library/Application Support/vcmi",
    "~/Library/Logs/vcmi",
    "~/Library/Preferences/eu.vcmi.vcmi.plist",
    "~/Library/Saved Application State/eu.vcmi.vcmi.savedState",
  ]

  caveats do
    unsigned_accessibility
  end
end
