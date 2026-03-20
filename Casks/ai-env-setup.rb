cask "ai-env-setup" do
  version "1.0.74"
  sha256 "731d15e6cf8067f0338cf6bd2a0fe098b4d938130307b8ccdfa35ce99b42babe"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-1.0.74-23338180355-1/ai-env-setup-v1.0-build74.zip"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "ai-env-setup.app"
end
