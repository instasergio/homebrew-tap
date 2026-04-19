# homebrew-tap

Public Homebrew tap for FullHouse and other packages.

## Install

```bash
brew tap instasergio/tap
brew install --cask fullhouse

# Or explicit tap-qualified form:
brew install --cask instasergio/tap/fullhouse
```

If this tap was already installed before the rename, run `brew update` first so Homebrew sees the new cask metadata.

## Update

```bash
brew update
brew upgrade --cask fullhouse

# Or explicit tap-qualified form:
brew upgrade --cask instasergio/tap/fullhouse
```

## Uninstall

```bash
# Remove app bundle, keep user data/configs
brew uninstall --cask fullhouse

# Full reset: remove app-owned local data too (as defined in cask zap)
brew uninstall --zap --cask fullhouse
```

## Migration from `ai-env-setup`

`ai-env-setup` was renamed to `fullhouse`. The tap now ships a Homebrew cask rename map, so after `brew update` the old token should resolve to `fullhouse`.

If you want the cleanest manual migration path:

```bash
brew update
brew uninstall --cask ai-env-setup
brew install --cask fullhouse
```

Use `--zap` with the old token only if you intentionally want to remove app-owned local data too.

## Maintainer flow

1. Build app artifact (`.zip`) and get SHA256.
2. Create or update the GitHub release for the target build tag in this tap repo.
3. Upload the zip asset as `fullhouse-v<marketing-version>-build<build-number>.zip`.
4. Update `Casks/fullhouse.rb` version + sha256 if needed.
5. Keep `cask_renames.json` mapping `ai-env-setup` to `fullhouse`.
6. Commit and push.
