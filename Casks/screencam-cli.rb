cask "screencam-cli" do
  version "1.19.0"
  sha256 "be564ead8e8e6c9b494681dedd3c97078afa77953bb7daab3914fceeea6234fa"

  url "https://download.thescreen.cam/cli/releases/1.19.0/screencam-cli-1.19.0-macos-arm64.zip"
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
