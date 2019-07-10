class HomeController < ApplicationController
  def index
  	@p=Vocab2.getEverthing
  end

 



def insert

@clist=Vocab2.getColList
end

def insertdata
table = params[:table]
word = params[:word]
sql="INSERT INTO vocab ( "+table+" ) VALUES ( " + word.to_str + " ) ;";
col=ActiveRecord::Base.connection.execute(sql)
  render json: {}, status: 200

     #    respond_to do |format|
     #    format.html { redirect_to insert_url ,notice: "hello" }
     #  format.json { head :ok }
     #  format.js   { render :layout => false }
    	# end
end


def delete
@clist=Vocab2.getColList
@p=Vocab2.getEverthing

  end


def deletedata
table = params[:table]
word = params[:word]
sql="UPDATE  vocab set " + table +" = NULL where "+table+" = "+word+";"; 
col=ActiveRecord::Base.connection.execute(sql)
  render json: {}, status: 200

     #    respond_to do |format|
     #    format.html { redirect_to insert_url ,notice: "hello" }
     #  format.json { head :ok }
     #  format.js   { render :layout => false }
    	# end
end

Vocab2.clean

end
