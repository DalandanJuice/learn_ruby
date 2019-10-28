class Book

  def initialize
    @title = ' '
  end
  def title
    @title
  end
  def title=(title)
    titles = title.split  ' '
    i =0
    titles.each do |t|
      if t == 'the' or t =='an' or t =='a' or t == 'and' or t == 'of' or t =='in'
        if i == 0
          @title += t.capitalize.strip + ' '
        else
          @title += t.strip + ' '
        end
      else
        @title += t.capitalize.strip + ' '
      end
      i += 1
    end
    @title = @title.strip
  end
end
