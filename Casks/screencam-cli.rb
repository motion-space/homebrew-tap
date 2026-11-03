cask "screencam-cli" do
  version "1.31.1"
  sha256 "e6c244f8ddc9acb555b62c2691ad887a0956c5942e242f4c65e8d567d36a1677"

  url "https://download.thescreen.cam/cli/releases/1.31.1/screencam-cli-1.31.1-macos-arm64.zip"
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
