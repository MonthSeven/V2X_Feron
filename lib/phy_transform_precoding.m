function [ output_seq ] = phy_transform_precoding( input_seq, NoOfSubcarriers )
%PHY_TRANSFORM_PRECODING implements uplink transform precoding based on
%3GPP 36.211, Section 5.3.3
% Inputs:
%   input_seq       : input symbol sequence
%   NoOfSubcarriers : number of allocated subcarriers
%#codegen

matrix = reshape(input_seq, NoOfSubcarriers, length(input_seq)/NoOfSubcarriers);
output_seq = reshape(fft(matrix)/sqrt(NoOfSubcarriers),length(input_seq),1);

end

