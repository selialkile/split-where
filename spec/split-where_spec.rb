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
      let(:list) {["'xx'","'yy,'","l{}","'dg,'g" ,"estralando os 'dedos,pah'"]}
      let(:text){list.join(",")}
      subject{ text.split_where(value:",", outside:"'") }
      it "should has 2 itens" do
        subject.count.should == 5
      end

      it "should return a text in index 0" do
        subject[0].should == list[0]
      end

      it "should return a text in index 1" do
        subject[1].should == list[1]
      end

      it "should return a text in index 2" do
        subject[2].should == list[2]
      end

      it "should return a text in index 3" do
        subject[3].should == list[3]
      end

      it "should return a text in index 4" do
        subject[4].should == list[4]
      end
    end

  end
end
