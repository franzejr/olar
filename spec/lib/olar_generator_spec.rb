require 'spec_helper'
require 'olar_generator'

describe OlarGenerator do
    subject(:gen) { OlarGenerator }

    describe '.olar' do
      context 'it does olar!' do
        it '' do
          expect(gen.olar('Oi, meu amigo')).to eq 'Oi,.meu.amigor.'
        end
      end

      context 'when it finishes with a special character' do

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
        end
      end
    end

    describe '.add_point' do
      it { expect(gen.add_point('amigo')).to eq 'amigo.' }
    end
end
