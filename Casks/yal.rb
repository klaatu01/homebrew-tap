cask "yal" do
  version "0.1.0"
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "sha256:fb4af9c317bcd0ee859bbef5400d600e55649d5c19f504be8a3cfe7677b9b556",
         intel: "sha256:249386be63930011761fa742e0492011f26dd6979bde1d1d31067e706856fb75"

  url "https://github.com/klaatu01/yal/releases/download/app-v#{version}/yal_#{version}_#{arch}.dmg",
      verified: "github.com/klaatu01/yal/"
  name "YAL — Yet Another Launcher"
  desc "Tiny, no-nonsense macOS app launcher"
  homepage "https://github.com/klaatu01/yal"

  app "YAL.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: ["~/.config/yal"]
end
