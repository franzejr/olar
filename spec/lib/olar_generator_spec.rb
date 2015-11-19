require 'spec_helper'

describe OlarGenerator do
    subject(:gen) { OlarGenerator.new('olar, meu amigo') }

    describe '.result' do
      context 'it does olar!' do
        it 'runs all the olar rules and return the string' do
          expect(gen.apply_mais.apply_r.result).to eq 'olar,meu.amigor'
        end
      end
    end

    describe '.apply_mais' do
      context 'when it receives mais' do
        let(:gen) { OlarGenerator.new('mas') }
        it 'changes mas to mais' do
          expect( gen.apply_mais.result).to eq 'mais'
        end
      end

      context 'when it does not receive mais' do
        let(:gen) { OlarGenerator.new('olar') }
        it 'changes mas to mais' do
          expect( gen.apply_mais.result).to eq 'olar'
        end
      end
    end

    describe '.apply_r' do
      context 'when adds successfully' do
        let(:gen) { OlarGenerator.new('ola') }
        it { expect( gen.apply_r.result).to eq 'olar' }
      end

      context 'when it passes a non-alphabetic letter' do
        let(:gen) { OlarGenerator.new('132321321') }
        it 'returns the non-alphabetic character' do
          expect( gen.apply_r.result).to eq '132321321'
        end
      end
    end
end
