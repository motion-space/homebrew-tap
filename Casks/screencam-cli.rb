cask "screencam-cli" do
  version "1.0.7"
  sha256 "2bc32683ca9d5f04d56c9089ead07de9b0a7fdff01deb618d7b8edec1faf71ca"

  url "https://download.thescreen.cam/cli/releases/1.0.7/screencam-cli-1.0.7-macos-arm64.zip"
  name "ScreenCam CLI"
  desc "Native command-line client for ScreenCam recording and processing"
  homepage "https://thescreen.cam"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  binary "ScreenCamCLI.app/Contents/MacOS/screencam"

  caveats <<~EOS
    ScreenCam CLI requires the compatible ScreenCam app from the Mac App Store.
    Recording, processing, permissions, and Pro entitlement remain App-owned.
  EOS
end
