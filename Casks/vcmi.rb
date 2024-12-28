cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.1"
  sha256 arm:   "c8839bf605e3567b1986a12f5841f4fc7af2a1ea8b9021859c1185142c3506b4",
         intel: "7856a97952d77d23488e4344ad340258311daba91ae7702af7689794627e823c"

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
