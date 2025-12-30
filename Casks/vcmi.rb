cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.1"
  sha256 arm:   "d6a945627ae79d5648081d863166a2f1932f419f38388f55524397bc7bba903e",
         intel: "3f0c295a262495e89439cb53ec0ade4c7bf5b9ed75701c645dce6aaccd5cc7b1"

  url "https://github.com/vcmi/vcmi/releases/download/#{version}/VCMI-macOS-#{arch}.dmg",
      verified: "github.com/vcmi/vcmi/"
  name "VCMI"
  desc "Open-source engine for Heroes of Might & Magic III"
  homepage "https://vcmi.eu/"

  depends_on macos: ">= :catalina"

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
