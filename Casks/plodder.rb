cask "plodder" do
  version "1.0,29"
  sha256 "18bd614c4fb4ee071ace52d079c327bf577f25827720f809c71a2dfb67fa9720"

  url "https://github.com/instasergio/homebrew-tap/releases/download/plodder-build-#{version.before_comma}.#{version.after_comma}-local-20260909082334/PlodderApp-v#{version.before_comma}-build#{version.after_comma}.zip"
  name "Plodder"
  desc "Local work dispatcher across Tracker, Arcanum, git worktrees and CI"
  homepage "https://github.com/PlodderHouse/plodder"
  auto_updates true

  # LSMinimumSystemVersion 26.0 in the bundle; the
  # bare symbol means "this release or newer".
  depends_on macos: :tahoe

  app "PlodderApp.app"
  binary "#{appdir}/PlodderApp.app/Contents/MacOS/plodder", target: "plodder"

  uninstall quit: "on.cloud.dev.plodder"

  # Releases before September 2026 installed a per-user LaunchAgent for the
  # CI watcher. The app retires it at launch; the zap covers a user who
  # uninstalls without ever reopening the app.
  zap launchctl: "on.cloud.dev.plodder.ci-watch",
      trash:     [
        "~/.config/plodder",
        "~/Library/Caches/on.cloud.dev.plodder",
        "~/Library/Preferences/on.cloud.dev.plodder.plist",
        "~/Library/Saved Application State/on.cloud.dev.plodder.savedState",
      ]
end
