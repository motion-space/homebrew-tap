cask "screencam-cli" do
  version "1.0.20"
  sha256 "cc946ba85a06354b7bef499f918be89b0791a30dba10527640c243c0baabea0e"

  url "https://download.thescreen.cam/cli/releases/1.0.20/screencam-cli-1.0.20-macos-arm64.zip"
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
