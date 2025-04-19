require File.expand_path('../../rotate', __FILE__)

RSpec.describe 'edge cases rotate elements' do
  it '#1 handles empty array' do
    arr = []
    expect(rotate_elements(arr.length, arr)).to eq("Cannot operate on empty array")
  end

  it '#2 handles single element array' do
    arr = [42]
    expect(rotate_elements(arr.length, arr)).to eq([42])
  end
end

RSpec.describe 'rotate elements' do
  it '#3 until minimum element is first element' do
    arr = [3, 2, 1, 5, 4]
    expect(rotate_elements(arr.length, arr)).to eq([1, 5, 4, 3, 2])
  end

  it '#4 returns same array is if the first element is already minimum' do
    arr = [1, 5, 4, 3, 2]
    expect(rotate_elements(arr.length, arr)).to eq([1, 5, 4, 3, 2])
  end

  it '#5 handles arrays with duplicate minimum values' do
    arr = [3, 1, 4, 1, 5, 9]
    expect(rotate_elements(arr.length, arr)).to eq([1, 4, 1, 5, 9, 3])
  end
end
