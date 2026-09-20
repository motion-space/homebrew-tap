cask "screencam-cli" do
  version "1.0.22"
  sha256 "65043dc7dfeb213f506860680df760231e56f2d6b3ed0bf061de3d5c1f0f226f"

  url "https://download.thescreen.cam/cli/releases/1.0.22/screencam-cli-1.0.22-macos-arm64.zip"
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
