require 'account'

describe Account do

  describe '#initialize' do

    it 'balance is zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do

    it 'increases the balance' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end
  end

  describe '#withdraw' do

    context 'with money in account' do

      it 'reduces the balance' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.balance).to eq(50)
      end
    end

    context 'with no money in account' do

      it 'throws an error' do
        expect{subject.withdraw(50)}.to raise_error('Insufficient balance')
        expect(subject.balance).to eq(0)
      end
    end

  end


end
