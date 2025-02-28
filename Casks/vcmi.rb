cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.7"
  sha256 arm:   "faaf8a2720fba0ee81616665d157dea9966526156baefda07c5dbab620695671",
         intel: "5a0549059fee4921a02f4a9218a15c2901607db5b168273d244023d3547576d7"

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
