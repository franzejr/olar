require 'spec_helper'
require 'olar_generator'

describe OlarGenerator do
    subject(:gen) { OlarGenerator }

    describe '.olar' do
      context 'it does olar!' do
        it 'runs all the olar rules and return the string' do
          expect(gen.olar('Oi, meu amigo')).to eq 'Oi,meu.amigor.'
        end
      end
    end

    describe '.add_mais' do
      context 'when it receives mais' do
        it 'changes mas to mais' do
          expect(gen.add_mais('mas')).to eq 'mais'
        end
      end

      context 'when it does not receive mais' do
        it 'changes mas to mais' do
          expect(gen.add_mais('olar')).to eq 'olar'
        end
      end
    end

    describe '.add_r' do
      context 'when adds successfully' do
        it { expect(gen.add_r('amigo')).to eq 'amigor' }
        it { expect(gen.add_r('amiga')).to eq 'amigar' }
        it { expect(gen.add_r('pe')).to eq 'per' }
      end

      context 'when it passes a non-alphabetic letter' do
        it 'returns the non-alphabetic character' do
          expect(gen.add_r('123')).to eq '123'
          expect(gen.add_r('!@#@!')).to eq '!@#@!'
        end
      end
    end

    describe '.add_point' do
      context 'when it finishes with a non-special character' do
        it 'adds a point at the end' do
          expect(gen.add_point('amigo')).to eq 'amigo.'
        end
      end

      context 'when it finishes with a special character' do
        it 'returns the word itself' do
          expect(gen.add_point('amigo!')).to eq 'amigo!'
        end
      end
    end
end
