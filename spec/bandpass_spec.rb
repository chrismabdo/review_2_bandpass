require 'bandpass'

describe BandPass do
    it 'will create a new instance for musicians to use' do
        expect(subject).to be_instance_of BandPass
    end

    it 'will respond to alter_soundwave with a soundwave as an argument' do
        expect(subject).to respond_to(:alter_soundwave).with(1).argument
    end
end