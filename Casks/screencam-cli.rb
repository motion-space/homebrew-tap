cask "screencam-cli" do
  version "1.0.11"
  sha256 "e0c74ad251412323e6b0d6ead1e4b85bcd526be1e6901aa5b853f4a3fd6c3f28"

  url "https://download.thescreen.cam/cli/releases/1.0.11/screencam-cli-1.0.11-macos-arm64.zip"
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
