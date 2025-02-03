cask "vcmi" do
  arch arm: "arm", intel: "intel"

  version "1.6.4"
  sha256 arm:   "f57000e063f6b8ee3d0344628cb2e7e6a0aa0ec88e94c701b7f76e4897c6d0cf",
         intel: "bfbb7c3c8b07181f9a74b587785da2351f150a8e97b025fcc3792503a221653b"

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
