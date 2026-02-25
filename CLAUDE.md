# homebrew-tap

schroneko/homebrew-tap - NiceVoice を Homebrew Cask で配布するための tap リポジトリ。

## 構成

- `Casks/nicevoice.rb` - NiceVoice の Cask 定義
- GitHub Release に ZIP バイナリを格納 (nicevoice-app はプライベートのため)

## バージョン更新手順

1. nicevoice-app 側で新バージョンをビルドして ZIP を作成
2. ZIP の SHA256 を取得: `shasum -a 256 /path/to/NiceVoice-X.Y.Z.zip`
3. `Casks/nicevoice.rb` の `version` と `sha256` を更新
4. コミットして push
5. 古い GitHub Release を削除して新しいバージョンで再作成:
   - `gh release delete vX.Y.Z --repo schroneko/homebrew-tap --yes`
   - `git push origin --delete vX.Y.Z`
   - `gh release create vX.Y.Z /path/to/NiceVoice-X.Y.Z.zip --title "vX.Y.Z" --notes "NiceVoice vX.Y.Z" --repo schroneko/homebrew-tap`
6. 動作確認: `brew reinstall --cask schroneko/tap/nicevoice`

## 注意

- ZIP の URL パターン: `https://github.com/schroneko/homebrew-tap/releases/download/v{version}/NiceVoice-{version}.zip`
- git 操作はこのリポジトリのセッションで行う (nicevoice-app の git 操作は向こうのセッションで)
