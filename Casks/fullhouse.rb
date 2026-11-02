cask "fullhouse" do
  version "2.17.165"
  sha256 "fea5e2f5d01745fe2a63c02b63d6a63e631cc29eb86e0e0b24502f50d7b639ee"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-41457932523-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"
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
