cask "nicevoice" do
  version "0.1.4"
  sha256 "fb1490be68d09aef1a581dc1e1dc3cc594acae83602b5e5b5f3cab40f2a18149"

  url "https://github.com/schroneko/homebrew-tap/releases/download/v#{version}/NiceVoice-#{version}.zip"
  name "NiceVoice"
  desc "Voice input app for macOS"
  homepage "https://github.com/schroneko/nicevoice-app"

  depends_on formula: "uv"

  app "NiceVoice.app"

  zap trash: [
    "~/Library/Logs/NiceVoice",
  ]
end
