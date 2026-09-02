cask "plodder" do
  version "1.0.28"
  sha256 "1ed22cd7c481ad60630fbfcf702a6a527b0b9036307a9b894ce8f13326c072de"

  url "https://github.com/instasergio/homebrew-tap/releases/download/plodder-build-1.0.28-local-20260902114439/PlodderApp-v1.0-build28.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "Plodder"
  desc "Local work dispatcher across Tracker, Arcanum, git worktrees and CI"
  homepage "https://github.com/PlodderHouse/plodder"
  auto_updates true

  # LSMinimumSystemVersion 26.0 in the bundle.
  depends_on macos: ">= :tahoe"

  app "PlodderApp.app"
  binary "#{appdir}/PlodderApp.app/Contents/MacOS/plodder", target: "plodder"

  uninstall quit: "on.cloud.dev.plodder"

  # The background CI watcher is a per-user LaunchAgent the app installs on
  # request; it survives an upgrade and goes only with an explicit zap.
  zap launchctl: "on.cloud.dev.plodder.ci-watch",
      trash:     [
        "~/.config/plodder",
        "~/Library/Caches/on.cloud.dev.plodder",
        "~/Library/Preferences/on.cloud.dev.plodder.plist",
        "~/Library/Saved Application State/on.cloud.dev.plodder.savedState",
      ]
end
