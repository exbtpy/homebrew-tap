# Template for https://github.com/exbtpy/homebrew-tap
# Names mirror macos/identity.env. Copy this file into the tap.
# The release workflow rewrites `version` and `sha256` when HOMEBREW_TAP_TOKEN is set.
# `sha256` below is a placeholder. `brew install` will reject it until a release fills it in.
cask "jollybar" do
  version "0.1.0"
  sha256 "1f12164e742c6db6b415ec0334dc59ca60d5cab5d08dc2464720ea88ed2548d6"

  url "https://github.com/exbtpy/jollybar/releases/download/v#{version}/Jollybar.dmg"
  name "Jollybar"
  desc "Menu bar meters for Grok Bot and the SuperGrok weekly pool"
  homepage "https://github.com/exbtpy/jollybar"

  depends_on macos: ">= :sonoma"

  app "Jollybar.app"

  zap trash: [
    "~/.config/jollybar",
    "~/.config/grok-usage-bar",
    "~/Library/Preferences/com.exbtpy.Jollybar.plist",
    "~/Library/Preferences/com.exbtpy.GrokUsageBar.plist",
  ]
end
