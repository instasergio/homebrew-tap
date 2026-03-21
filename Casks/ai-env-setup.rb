cask "ai-env-setup" do
  version "1.0.80"
  sha256 "dacac9b2798e2198ac40bbece62f78431b500c5c97f0a3def983a2f78e372bc2"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-1.0.80-23385915535-1/ai-env-setup-v1.0-build80.zip"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "ai-env-setup.app"
end
