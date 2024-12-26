cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.0"
  sha256 arm:   "89C6BAD8C46CA9D80148556DD87C9F26FD04F29C20B36E25903F4798110EFCDB",
         intel: "CBF2F56044186622F850702330F85EF9AB3A7321AE0D1ECADA3CE3BE62381209"

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
