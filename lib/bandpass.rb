class BandPass

    def alter_soundwave(soundwave)
        if soundwave.empty?
            raise StandardError.new "No Frequency Supplied."
        else
            soundwave
        end
    end
end