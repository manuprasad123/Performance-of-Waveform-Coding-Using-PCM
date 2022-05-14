# Performance-of-Waveform-Coding-Using-PCM
1. Performance of Waveform Coding Using PCM
1. Generate a sinusoidal waveform with a DC offset so that it takes only
positive amplitude value.
2. Sample and quantize the signal using an uniform quantizer with number of
representation levels L. Vary L. Represent each value using decimal to
binary encoder.
3. Compute the signal-to-noise ratio in dB.
4. Plot the SNR versus number of bits per symbol. Observe that the SNR
increases linearly.

Steps to follow 

To get the 1,2,3 steps run : IMPL_quantiz_level_pcm.m

To get the SNR vs Quantization levels run : IMPL_Qlevel_vs_SNR.m (this run with the function IMPL_Quant.m)

To plot the Quantization level vs SNR changing the same program (IMPL_quantiz_level_pcm.m ) Into a function (IMPL_Quant.m) and running it with IMPL_Qlevel_vs_SNR.m
