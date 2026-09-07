cask "fullhouse" do
  version "2.11.144"
  sha256 "b3e7d3e8be65f65a0cc1ff9b5276f3f586d003144f67c1674efa0e80e4be55f8"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-34119196565-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
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
