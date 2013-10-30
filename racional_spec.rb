require "rspec"
require "./racional.rb"


describe Racional do
  before :each do
	@r = Racional.new(4,8)	
	@r2 = Racional.new(4,9)
	
  end


  it "Debe existir un numerador" do
     @r.num.is_a?(Numeric).should == true
  end

  it "Debe existir un denominador" do
    @r.denom.is_a?(Numeric).should == true
  end	
	
  it "Se debe invocar al metodo num() para obtener el numerador" do
     @r.num.should == 4
  end

  it "Se debe invocar al metodo denom() para obtener el denominador" do
    @r.denom.should == 8
  end

  it "Se debe mostrar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
     @r.to_s.should == "4/8"
 end

  it "Debe de estar en su forma reducida" do
    @r.should == Racional.new(1,2)
  end
  
  it "Se debe mostar por la consola la fraccion en formato flotante" do
    @r.to_f.should == 2.to_f/4.to_f
  end

  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
    Racional.new(-4,8).abs.should == @r
  end

  it "Se debe calcular el opuesto de una fraccion con -" do
    (-@r).should == Racional.new(-8,4)
  end

  it "Se debe de poder comprobar si una fraccion es menor que otra" do
    (@r < @r2).should == false
  end

  it "Se debe de poder comprobar si una fraccion es mayor que otra" do
    (@r > @r2).should == true
  end
  
  it "Se debe de poder comprobar si una fraccion es mayor o igual que otra" do
        (@r >= @r2).should == true
  end
  
  it "Se debe de poder comprobar si una fraccion es menor o igual que otra" do
        (@r <= @r2).should == false

  end

  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
     @r.reciprocal.to_s.should == "8/4"
  end
  
  it "Se debe poder comprobar si dos fracciones son iguales" do
     (@r ==  @r2).should == false
  end

  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
     (@r + @r2).to_s.should == "17/18" 
  end

  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
     (@r - @r2).to_s.should == "1/18"
  end

  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
     (@r * @r2).to_s.should == "2/9"
 end

  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
     (@r / @r2).to_s.should == "9/8"
 end


  it "Se debe calcular el resto de dos fracciones con % y dar el resultado de forma reducida" do
     (@r % @r2).to_s.should == "1"
 end  

  it "Se debe mostar el recíproco de la división de dos fracciones" do
     (@r / @r2).reciprocal.to_s.should == "8/9"

 end
      
end















