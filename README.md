Builds digital/audio work stations
musicians use their filters to change how their tracks sound
They would like us to build a band pass filter

band pass filter
sets any frequencies in a sound wave that are below a minimum frequency to the min frequency
and any above to the max frequency
leaves everything else the same.

DEFAULT MINIMUM = 40 htz
MAXIMUM = 1000 htz
sometimes musicians like to set their music to receive custom frequencies

input variation
frequency is received as a positive integer
sound wave is an array of frequencies
Each sound wave has a minimum length of 1. 
Any sound wave below the length of 1 will return an error message "No frequency Supplied."
No maximum length
44,100 frequencies is 1 second of music. Must be run in under 100 millisecs.
if nil arises, raise expection "Data corrupted"

output is the corrected array e.g. [60,10,45,60,1500] -> [60,40,45,60,1000]

Plan: 

create a class of BandPass

Two constants MIN and MAX frequencies which are set to 40 and 1000 respectively.

when initialized:
    option to add two arguments (two integers) which will relate to the min and max frequencies

methods:
- alter sound wave, takes 1 arg
- checks for valid sound wave: check length > 1
- check for positive frequency / nil, raises error if not.
- check against maximum frequency. Changing any numbers > 1000 to == 1000
- check against minimum frequency. Changing any numbers < 40 to == 40

Input/output table:

band_pass = BandPass.new
band_pass.alter_soundwave([]) => "No frequency supplied"

band_pass = BandPass.new
pass_pass.alter_soundwave([40]) => [40]

band_pass = BandPass.new
pass_pass.alter_soundwave([1]) => [40]

band_pass = BandPass.new
pass_pass.alter_soundwave([1100]) => [1000]

band_pass = BandPass.new
pass_pass.alter_soundwave([nil]) => "Data corrupted"

band_pass = BandPass.new
pass_pass.alter_soundwave([1, 40 , 1100]) => [40, 40, 1000]



