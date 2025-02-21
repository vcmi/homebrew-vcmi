cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.6"
  sha256 arm:   "45c385db2aa0bc40fd964c27205584fa7b0a0e684eade91170c3d5539cd708cd",
         intel: "fe75b9e32cae9bd4c20b8625638c93205c269a9803ed5edbd64a2d6617c3fee1"

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
