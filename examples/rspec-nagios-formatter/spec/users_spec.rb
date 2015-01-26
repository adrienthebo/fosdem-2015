require 'etc'
describe 'my user account' do
  subject { Etc.getpwnam('adrien') }

  it "has a UID of 1000" do
    expect(subject.uid).to(eq(1000))
  end

  it "has a GID of 1000" do
    expect(subject.gid).to(eq(1000))
  end
end
