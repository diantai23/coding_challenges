class Image

  def initialize(input_array)
    @input_array = input_array
  end

  def output_image
    @input_array.each do |row|
      puts row.join
    end
  end

  def blur
    @copy_array = Marshal.load(Marshal.dump(@input_array))
    @input_array.each_with_index do |row, row_index|
      row.each_with_index do |pixel, pixel_index|
        if pixel == 1
          @copy_array[row_index - 1][pixel_index] = 1 if (row_index - 1) >= 0
          @copy_array[row_index + 1][pixel_index] = 1 if (row_index + 1) < @input_array.length
          @copy_array[row_index][pixel_index - 1] = 1 if (pixel_index - 1) >= 0
          @copy_array[row_index][pixel_index + 1] = 1 if (pixel_index + 1) < @input_array[row_index].length
        end
      end
    end
    return Image.new(@copy_array)
  end
end

image = Image.new([
  [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
])

image.blur.output_image
