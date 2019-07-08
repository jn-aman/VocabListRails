class Vocab2 < ApplicationRecord
def self.getEverthing
	
sql="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'vocab' AND TABLE_NAME = 'vocab'";
colList=[]
col=ActiveRecord::Base.connection.execute(sql)
		for i in col do
			colList<< "`"+i[0]+"`" ;
		end
				outer = Hash.new()

	for i in colList do
		sql2="select " + i + " from vocab where " + i +" is not NULL"
		col2=ActiveRecord::Base.connection.execute(sql2)
		 # puts col2
		 k=0;
		 inner=Hash.new()
		for l in col2 do
		inner[k]=l;
		k=k+1;
		end
outer[i[1..-2]]=inner;

	end
return outer
end


def self.getColList
sql="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'vocab' AND TABLE_NAME = 'vocab'";
colList=[]
col=ActiveRecord::Base.connection.execute(sql)
		for i in col do
			colList<< "`"+i[0]+"`" ;
		end
return colList
end


end
