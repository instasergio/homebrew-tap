cask "ai-env-setup" do
  version "1.0.83"
  sha256 "dc81c97c0c475c4e6ba877f943a1da42ca3a1935586dbb637cb92970ee8f4691"

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
