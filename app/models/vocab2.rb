class Vocab2 < ApplicationRecord
def self.getEverthing
	
sql="SHOW columns FROM vocab;"
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
def self.sed
sql="SHOW columns FROM vocab;"
colList=[]

col=ActiveRecord::Base.connection.execute(sql)
for i in col do
			colList<< "`"+i[0]+"`" ;
		end
puts colList
end

def self.getColList
sql="SHOW columns FROM vocab;"
colList=[]
col=ActiveRecord::Base.connection.execute(sql)
		for i in col do
			colList<< "`"+i[0]+"`" ;
		end
return colList
end



def self.clean

	pl2=""
c=Vocab2.getColList
for i in c do
		pl2+=i+" is NULL and "
		end
		pl2=pl2[0..-5]
sql="DELETE FROM vocab WHERE "+ pl2 + ";"
puts sql
ActiveRecord::Base.connection.execute(sql)


end




end
