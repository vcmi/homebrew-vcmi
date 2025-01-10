cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.3"
  sha256 arm:   "eaafbe6d2d4c40a79aa4e24467fa7b7c4c3b80b75990645d02fe1b9c5d58e356",
         intel: "619f1b97bf3d3de144626dbb4f57461447ef81cde8907c4a3eedbabeb0023cc1"

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
