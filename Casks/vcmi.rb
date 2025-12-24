cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.7.0"
  sha256 arm:   "d9e5519d1d4febdf27cce28c527a93708ef2410f940288cc27fcc3953a3c7a6c",
         intel: "18750f5477391cd0dc0a0f52560b0904dc74bae2ceda7a2987848aef8c6c0e47"

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
