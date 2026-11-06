cask "fullhouse" do
  version "2.18.167"
  sha256 "d0941c45904271dd5b89c356697094951cbb8d85768ae0ffc9346ecf5c4e616f"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-42222996858-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://github.com/PlodderHouse/fullhouse"
  auto_updates true
  depends_on arch: :arm64

  app "FullHouse.app"
  binary "#{appdir}/FullHouse.app/Contents/Helpers/fh", target: "fh"

  uninstall quit: "on.cloud.dev.fullhouse"

  zap trash: [
    "~/.config/fullhouse",
    "~/Library/Caches/on.cloud.dev.fullhouse",
    "~/Library/Preferences/on.cloud.dev.fullhouse.plist",
    "~/Library/Saved Application State/on.cloud.dev.fullhouse.savedState",
  ]
end
