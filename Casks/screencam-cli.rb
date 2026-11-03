cask "screencam-cli" do
  version "1.31.0"
  sha256 "cab974ef288dad4b03d9b8f5b50c0f3c4f4ab4a0ab31c956f773d2bf755b99b2"

  url "https://download.thescreen.cam/cli/releases/1.31.0/screencam-cli-1.31.0-macos-arm64.zip"
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
