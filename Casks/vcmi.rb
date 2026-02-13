cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.2"
  sha256 arm:   "1d31d9770471c9fe1108e78a69ccca1a57c3348678fbf44f8a37fe7c88d16037",
         intel: "3d8291b3b6838e214351bace1ca09558a8223a760b97b09f27f83dcdee58e8d8"

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
end
