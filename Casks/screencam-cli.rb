cask "screencam-cli" do
  version "1.0.17"
  sha256 "c0333c2d8865dd73d0f132bb5e1c465ccb22356c9ba908acb51a2a6c35dc5988"

  url "https://download.thescreen.cam/cli/releases/1.0.17/screencam-cli-1.0.17-macos-arm64.zip"
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
