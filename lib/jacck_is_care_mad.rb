class LiveRecord

  def self.all
    sql = <<-SQL
    SELECT *
    FROM #{self}
    SQL

    DB[:conn].execute(sql).map{|row| self.new_from_db(row)}
  end
end