require 'spec_helper'
require 'olar_generator'

describe OlarGenerator do
    describe '.olar' do

    end
    
    describe '.add_r' do
      subject(:gen) { OlarGenerator }

      context 'when adds successfully' do
        it { expect(gen.add_r('amigo')).to eq 'amigor' }
        it { expect(gen.add_r('amiga')).to eq 'amigar' }
        it { expect(gen.add_r('pe')).to eq 'per' }
      end

      context 'when it passes a non-alphabetic letter' do
        it { expect(gen.add_r('123')).to be_nil }
      end

    end
end
