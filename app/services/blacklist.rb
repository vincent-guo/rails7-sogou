class Blacklist
  def is_banned?(keyword)
    list.include?(keyword)
  end

  private
  def list
    %w[谷歌 Youtube 登月]
  end
end
