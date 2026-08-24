cask "screencam-cli" do
  version "1.0.5"
  sha256 "e09eb9378d8d8318fc68026a551c42e1ad6aadb5717f98f9bc76f72e0b1e69bc"

  url "https://download.thescreen.cam/cli/releases/1.0.5/screencam-cli-1.0.5-macos-arm64.zip"
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
