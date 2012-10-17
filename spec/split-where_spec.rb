# -*- encoding : utf-8 -*-
require 'spec_helper'

describe String do


  context "#split_where" do

    context "given a success with simple split comma " do
      let(:text) {"a,b,c"}
      subject{ text.split_where(value:",") }
      it "should has 2 itens" do
        subject.count.should == 3
      end

      it "should return a text in index 0" do
        subject[0].should == "a"
      end

      it "should return a text in index 1" do
        subject[1].should == "b"
      end

      it "should return a text in index 2" do
        subject[2].should == "c"
      end
    end

    context "given a success with split comma inside of aphostrofe" do
      let(:text) {"value:'xx',value:'yy,',lslslsl{},ddddddd'dg,'g"}
      subject{ text.split_where(value:",", outside:"'") }
      it "should has 2 itens" do
        subject.count.should == 5
      end

      it "should return a text in index 0" do
        subject[0].should == "value:'xx'"
      end

      it "should return a text in index 1" do
        subject[1].should == "value:'yy,'"
      end

      it "should return a text in index 2" do
        subject[2].should == "lslslsl{}"
      end

      it "should return a text in index 3" do
        subject[3].should == "ddddddd'dg,'g"
      end
    end

  end
end
