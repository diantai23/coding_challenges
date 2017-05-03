class Image

  def initialize(input_array)
    @input_array = input_array
  end

  def output_image
    @input_array.each do |row|
      puts row.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image # "calling code"
