cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.5"
  sha256 arm:   "6cf91722b037ed9e3677d442186b8e7d4d76dda962c5360c849e4f065c9079ec",
         intel: "e172bf5c46c57bc6d59603415184e1b3f97e2508e470336cfbf73f924de6f818"

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
