cask "fullhouse" do
  version "1.0.96"
  sha256 "ccc6cf406d2e6ed6a2b7bc5fc6b3388cb8115dfaaa274a57c80f5338a2896718"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-24561963427-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "FullHouse.app"

  uninstall quit: "on.cloud.dev.fullhouse"

  zap trash: [
    "~/.config/fullhouse",
    "~/Library/Caches/on.cloud.dev.fullhouse",
    "~/Library/Preferences/on.cloud.dev.fullhouse.plist",
    "~/Library/Saved Application State/on.cloud.dev.fullhouse.savedState",
  ]
end
