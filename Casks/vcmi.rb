cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.8"
  sha256 arm:   "c2753ac55bc7e132e4a1ffa27bdca272ed070126186ca246e4433b21aeb17a75",
         intel: "5c55e1049db9d6c753a2492be4bf178a35b4b0f0b938b3068f0cb46f3f40207f"

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
