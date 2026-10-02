cask "fullhouse" do
  version "2.14.150"
  sha256 "18cfc0ec18f39aa01ca66d450eb8b587f14434f00b4a7837a24eaae458eea262"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-36932677322-3/fullhouse-v#{version.major_minor}-build#{version.patch}.zip"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"
  auto_updates true

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
