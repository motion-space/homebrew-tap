cask "screencam-cli" do
  version "1.0.18"
  sha256 "173fe08f24281f883fe28e10c9b242d48020ea58d5e953e568b402670db5c5bf"

  url "https://download.thescreen.cam/cli/releases/1.0.18/screencam-cli-1.0.18-macos-arm64.zip"
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
