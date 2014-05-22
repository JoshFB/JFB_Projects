require 'size_recognition'

describe "Size recognition" do

	# let(:user) {USER.new}

	# it "can get user measurements" do 
	# 	expect(user_chest_measurements(0)).to eq (0)
	# end

	# it "can get user measurents" do
	# 	expect(user_chest_measurements(40)).to eq (40)
	# end

	# it "can return user measurements" do
	# 	user_chest_measurements(50)
	# 	expect(return_of_user_chest_measurements).to eq(50)
	# end

	# it 'does not return any measurements when they are not set' do
	# 	expect(return_of_user_chest_measurements).to be_nil
	# end

	it "should have an empty list of measurements" do
		measurements_recorder = MeasurementsRecorder.new
		expect(measurements_recorder.measurements).to eq []
	end

	it "lets you modify chest size" do
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.chest = 38
		expect(measurements_recorder.chest).to eq(38)
	end

	it 'saves measurements when all measurements are set' do
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.chest = 38
		measurements_recorder.waist = 32
		measurements_recorder.hip = 34
		measurements_recorder.inside_leg = 50
		measurements_recorder.shoe_size = 9.0
		measurements_recorder.save_measurements
		expect(measurements_recorder.measurements).to eq([{chest: 38, waist: 32, hip: 34, inside_leg: 50, shoe_size: 9}]
)
	end


	# it 'saves measurements when all measurements are set' do
	# 	measurements_recorder = MeasurementsRecorder.new
	# 	measurements_recorder.chest = 38
	# 	measurements_recorder.waist = 32
	# 	measurements_recorder.hip = 34
	# 	measurements_recorder.inside_leg = 50
	# 	measurements_recorder.save_measurements
	# 	measurements_recorder.save_to_file
	# end

	it "converts inches to cm" do 
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.chest = 38
		expect(measurements_recorder.to_cm(measurements_recorder.chest)).to eq (96.52)
	end

	it "converts uk shoe sizes to us" do
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.shoe_size = 9.0
		expect(measurements_recorder.uk_to_us(measurements_recorder.shoe_size)).to eq  (10.0)
	end

	it "returns measurements to the screen" do
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.chest = 40
		measurements_recorder.save_measurements
		expect(measurements_recorder.return_measurements.first).to include({chest: 40})

	end

	it "gets the chest size from user" do
		measurements_recorder = MeasurementsRecorder.new
		measurements_recorder.stub(:gets).and_return("34\n")
		measurements_recorder.get_chest_size
		expect(measurements_recorder.chest).to eq(34)
	end


end