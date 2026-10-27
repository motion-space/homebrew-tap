cask "screencam-cli" do
  version "1.19.1"
  sha256 "2e8266f925d6f1fabc0deee54cd2b53bb7478a7058aa245537dd2cad28a69b39"

  url "https://download.thescreen.cam/cli/releases/1.19.1/screencam-cli-1.19.1-macos-arm64.zip"
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
