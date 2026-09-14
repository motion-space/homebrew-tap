cask "screencam-cli" do
  version "1.0.8"
  sha256 "1bce5525b0e1133b670d8d2fb8d5239585bea88b4884e2d52a5cb3ae2378ad54"

  url "https://download.thescreen.cam/cli/releases/1.0.8/screencam-cli-1.0.8-macos-arm64.zip"
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
