cask "screencam-cli" do
  version "1.0.6"
  sha256 "f4804421157511c9fbfb9c482413fe97e30be0be68f8847b3dbdc756cbd5db9b"

  url "https://download.thescreen.cam/cli/releases/1.0.6/screencam-cli-1.0.6-macos-arm64.zip"
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
