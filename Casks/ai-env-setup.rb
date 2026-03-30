cask "ai-env-setup" do
  version "1.0.85"
  sha256 "e9396d824d01a7e1f6b3999960ab8b6864de3e82ae78fb7e2a17f588a7340f3d"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-local-1/ai-env-setup-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "ai-env-setup.app"

  uninstall quit: "on.cloud.dev.ai-env-setup"

  zap trash: [
    "~/.config/ai-env-setup",
    "~/Library/Caches/on.cloud.dev.ai-env-setup",
    "~/Library/Preferences/on.cloud.dev.ai-env-setup.plist",
    "~/Library/Saved Application State/on.cloud.dev.ai-env-setup.savedState",
  ]
end
