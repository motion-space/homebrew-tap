cask "screencam-cli" do
  version "1.13.1"
  sha256 "7482ad12e9c8c37e87076244966af840332904a70cea6dc967be4329ebe2844f"

  url "https://download.thescreen.cam/cli/releases/1.13.1/screencam-cli-1.13.1-macos-arm64.zip"
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
