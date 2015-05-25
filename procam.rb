require 'sinatra'

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
    @line = ""
    @line2 = ""
    
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
    
    if @niko === "Yes"
        @punkt = @punkt + 8
    end

    if @sugar === "Yes"
        @punkt = @punkt + 6
    end

    if @fam === "Yes"
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
    
    if @punkt <= 20 
        @line = "You Infarkt Risiko is < 1% "
    elsif @punkt == 21 
        @line = "You Infarkt Risiko is 1.1% "
    elsif @punkt == 22
        @line = "You Infarkt Risiko is 1.2% "
    elsif @punkt == 23
        @line = "You Infarkt Risiko is 1.3% "
    elsif @punkt == 24
        @line = "You Infarkt Risiko is 1.4% "
    elsif @punkt == 25
        @line = "You Infarkt Risiko is 1.6% "
    elsif @punkt == 26
        @line = "You Infarkt Risiko is 1.7% "
    elsif @punkt == 27
        @line = "You Infarkt Risiko is 1.8% "
    elsif @punkt == 28
        @line = "You Infarkt Risiko is 1.9% "
    elsif @punkt == 29
        @line = "You Infarkt Risiko is 2.3% "
    elsif @punkt == 30
        @line = "You Infarkt Risiko is 2.4% "
    elsif @punkt == 31
        @line = "You Infarkt Risiko is 2.8% "
    elsif @punkt == 32
        @line = "You Infarkt Risiko is 2.9% "
    elsif @punkt == 33
        @line = "You Infarkt Risiko is 3.3% "
    elsif @punkt == 34
        @line = "You Infarkt Risiko is 3.5% "
    elsif @punkt == 35
        @line = "You Infarkt Risiko is 4.0% "
    elsif @punkt == 36
        @line = "You Infarkt Risiko is 4.2% "
    elsif @punkt == 37
        @line = "You Infarkt Risiko is 4.8% "
    elsif @punkt == 38
        @line = "You Infarkt Risiko is 5.1% "
    elsif @punkt == 39
        @line = "You Infarkt Risiko is 5.7% "
    elsif @punkt == 40
        @line = "You Infarkt Risiko is 6.1% "
    elsif @punkt == 41
        @line = "You Infarkt Risiko is 7.0% "
    elsif @punkt == 42
        @line = "You Infarkt Risiko is 7.4% "
    elsif @punkt == 43
        @line = "You Infarkt Risiko is 8.0% "
    elsif @punkt == 44
        @line = "You Infarkt Risiko is 8.8% "
    elsif @punkt == 45
        @line = "You Infarkt Risiko is 10.2% "
    elsif @punkt == 46
        @line = "You Infarkt Risiko is 10.5% "
    elsif @punkt == 47
        @line = "You Infarkt Risiko is 10.7% "
    elsif @punkt == 48
        @line = "You Infarkt Risiko is 12.8% "
    elsif @punkt == 49
        @line = "You Infarkt Risiko is 13.2% "
    elsif @punkt == 50
        @line = "You Infarkt Risiko is 15.5% "
    elsif @punkt == 51
        @line = "You Infarkt Risiko is 16.8% "
    elsif @punkt == 52
        @line = "You Infarkt Risiko is 17.5% "
    elsif @punkt == 53
        @line = "You Infarkt Risiko is 19.6% "
    elsif @punkt == 54
        @line = "You Infarkt Risiko is 21.7% "
    elsif @punkt == 55
        @line = "You Infarkt Risiko is 22.2% "
    elsif @punkt == 56
        @line = "You Infarkt Risiko is 23.8% "
    elsif @punkt == 57
        @line = "You Infarkt Risiko is 25.1% "
    elsif @punkt == 58
        @line = "You Infarkt Risiko is 28.0% "
    elsif @punkt == 59
        @line = "You Infarkt Risiko is 29.4% "
    elsif @punkt >= 60
        @line = "You Infarkt Risiko is >30.0% "
    end

    if @sys >= 130 and @sys <= 139
        if @punkt < 54
            @line2 = "No Medicaments, but You need preventive Healthcare."
        elsif @punkt >= 54
            @line2 = "You need medicamentose Hypolipidemic Therapy"
        end
    elsif @sys >= 140
        @line2 = "You need Medicamentose Therapy for your Arterial Pressuer and Hyperlipidemie."
    end
    
    erb :result
end
