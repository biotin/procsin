require 'sinatra'
require 'haml'

get '/procam' do
  erb :procam
end


post '/result' do
    
    @age = params[:age].to_i
    @sys = params[:sys].to_i
    @niko = params[:niko]
    @fam = params[:fam]
    @sugar = params[:sugar]
    @try = params[:try].to_i
    @hdl = params[:hdl].to_i
    @ldl = params[:ldl].to_i
    
    @punkt = 0
    
    if @age >= 40 and @age <= 44
    @punkt = @punkt + 6
    elsif  @age >= 45 and @age <= 49
        @punkt = @punkt + 11
    elsif @age >= 50 and @age <= 54
        @punkt = @punkt + 16
    elsif @age >= 55 and @age <= 59
        @punkt = @punkt + 21
    elsif @age >= 60 and @age <= 65
        @punkt = @punkt + 26
    end
    
    if @sys >= 120 and @sys <= 129 
        @punkt = @punkt + 2 
    elsif @sys >= 130 and @sys <=139
        @punkt = @punkt + 3
    elsif @sys >= 140 and @sys <= 159
        @punkt = @punkt + 5
    elsif @sys >=160
        @punkt = @punkt + 8
    end
    
    if @niko === "y"
        @punkt = @punkt + 8
    end

    if @sugar === "y"
        @punkt = @punkt + 6
    end

    if @fam === "y"
        @punkt = @punkt + 4
    end
    
    if @try > 100 and  @try <= 149
        @punkt = @punkt + 2
    elsif @try >= 150 and @try <= 199
        @punkt = @punkt + 3
    elsif @try >=200
        @punkt = @punkt + 4
    end

    if @hdl < 35 
        @punkt = @punkt + 11
    elsif @hdl >= 35 and @hdl <= 44
        @punkt = @punkt + 8
    elsif @hdl >= 45 and @hdl <= 54
        @punkt = @punkt + 5
    end


    if @ldl >= 100 and @ldl <= 129 
        @punkt = @punkt + 5 
    elsif @ldl >= 130 and @ldl <= 159 
        @punkt = @punkt + 10
    elsif @ldl >= 160 and @ldl <= 189
        @punkt = @punkt + 14
    elsif @ldl >= 190
        @punkt = @punkt + 20
    end
    
    
    erb :result
end
