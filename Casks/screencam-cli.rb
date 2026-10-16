cask "screencam-cli" do
  version "1.11.0"
  sha256 "93402618a2bbb4b896e6cc510f09c731f36508ddbe17ac35e6f63f531546babc"

  url "https://download.thescreen.cam/cli/releases/1.11.0/screencam-cli-1.11.0-macos-arm64.zip"
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
