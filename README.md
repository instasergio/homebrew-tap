# homebrew-tap

Public Homebrew tap for AI Env Setup and other packages.

## Install

```bash
brew tap instasergio/tap
# After tapping, a short form also works:
brew install --cask ai-env-setup
# Or explicit tap-qualified form:
brew install --cask instasergio/tap/ai-env-setup
```

## Update

```bash
brew update
brew upgrade --cask instasergio/tap/ai-env-setup
```

## Uninstall

```bash
# Remove app bundle, keep user data/configs
brew uninstall --cask ai-env-setup

# Full reset: remove app-owned local data too (as defined in cask zap)
brew uninstall --zap --cask ai-env-setup
```

## Maintainer flow

1. Build app artifact (`.zip`) and get SHA256.
2. Create/update GitHub release tag `v<version>-build<build>` in this tap repo.
3. Upload zip as release asset `ai-env-setup-v<version>-build<build>.zip`.
4. Update `Casks/ai-env-setup.rb` version + sha256 if needed.
5. Commit and push.
