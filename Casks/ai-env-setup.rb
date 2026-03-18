cask "ai-env-setup" do
  version "1.0.64"
  sha256 "7f738429c4df7bb6f4a2d52383d33249d0cbf98386b11a9887979d170a8f40b4"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-1.0.64-23248312774-1/ai-env-setup-v1.0-build64.zip"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "ai-env-setup.app"
end
