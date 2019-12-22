require "snapshot_testing/rspec"

RSpec.describe SnapshotTesting::RSpec do
  include SnapshotTesting::RSpec

  it "performs snapshot tests" do
    expect("hello").to match_snapshot
    expect("goodbye").to match_snapshot
  end

  it "sanitizes output" do
    expect("\#{foo}").to match_snapshot
  end
end
