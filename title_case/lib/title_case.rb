class String

  define_method(:title_case) do
    designated_words = %w[is a but of and the or]

    words = self.split(" ")
    words.each_with_index() do |word, index|
      if word.class != String
        word
      end
      if !designated_words.include?(word)
        word.capitalize!()
      end
      if index == 0
        word.capitalize!()
      end

    end.join(" ").sub('O\'burty', 'O\'Burty').sub('Mcburt', 'McBurt')

  end

end
