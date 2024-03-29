# Julia wrapper for header: openlpc.h
# Automatically generated using Clang.jl


function create_openlpc_encoder_state()
    ccall((:create_openlpc_encoder_state, soundpipe), Ptr{openlpc_encoder_state}, ())
end

function init_openlpc_encoder_state(st, framelen)
    ccall((:init_openlpc_encoder_state, soundpipe), Cvoid, (Ptr{openlpc_encoder_state}, Cint), st, framelen)
end

function openlpc_encode(in, out, st)
    ccall((:openlpc_encode, soundpipe), Cint, (Ptr{Int16}, Ptr{Cuchar}, Ptr{openlpc_encoder_state}), in, out, st)
end

function destroy_openlpc_encoder_state(st)
    ccall((:destroy_openlpc_encoder_state, soundpipe), Cvoid, (Ptr{openlpc_encoder_state},), st)
end

function create_openlpc_decoder_state()
    ccall((:create_openlpc_decoder_state, soundpipe), Ptr{openlpc_decoder_state}, ())
end

function init_openlpc_decoder_state(st, framelen)
    ccall((:init_openlpc_decoder_state, soundpipe), Cvoid, (Ptr{openlpc_decoder_state}, Cint), st, framelen)
end

function openlpc_decode(sp, in, out, st)
    ccall((:openlpc_decode, soundpipe), Cint, (Ptr{Cint}, Ptr{Cuchar}, Ptr{Int16}, Ptr{openlpc_decoder_state}), sp, in, out, st)
end

function destroy_openlpc_decoder_state(st)
    ccall((:destroy_openlpc_decoder_state, soundpipe), Cvoid, (Ptr{openlpc_decoder_state},), st)
end

function openlpc_sr(sr)
    ccall((:openlpc_sr, soundpipe), Cvoid, (Cfloat,), sr)
end

function openlpc_get_encoder_state_size()
    ccall((:openlpc_get_encoder_state_size, soundpipe), Cint, ())
end

function openlpc_get_decoder_state_size()
    ccall((:openlpc_get_decoder_state_size, soundpipe), Cint, ())
end
# Julia wrapper for header: soundpipe.h
# Automatically generated using Clang.jl


function sp_auxdata_alloc(aux, size)
    ccall((:sp_auxdata_alloc, soundpipe), Cint, (Ptr{sp_auxdata}, Cint), aux, size)
end

function sp_auxdata_free(aux)
    ccall((:sp_auxdata_free, soundpipe), Cint, (Ptr{sp_auxdata},), aux)
end

function sp_create(spp)
    ccall((:sp_create, soundpipe), Cint, (Ptr{Ptr{sp_data}},), spp)
end

function sp_createn(spp, nchan)
    ccall((:sp_createn, soundpipe), Cint, (Ptr{Ptr{sp_data}}, Cint), spp, nchan)
end

function sp_destroy(spp)
    ccall((:sp_destroy, soundpipe), Cint, (Ptr{Ptr{sp_data}},), spp)
end

function sp_process(sp, ud, callback)
    ccall((:sp_process, soundpipe), Cint, (Ptr{sp_data}, Ptr{Cvoid}, Ptr{Cvoid}), sp, ud, callback)
end

function sp_process_raw(sp, ud, callback)
    ccall((:sp_process_raw, soundpipe), Cint, (Ptr{sp_data}, Ptr{Cvoid}, Ptr{Cvoid}), sp, ud, callback)
end

function sp_process_plot(sp, ud, callback)
    ccall((:sp_process_plot, soundpipe), Cint, (Ptr{sp_data}, Ptr{Cvoid}, Ptr{Cvoid}), sp, ud, callback)
end

function sp_process_spa(sp, ud, callback)
    ccall((:sp_process_spa, soundpipe), Cint, (Ptr{sp_data}, Ptr{Cvoid}, Ptr{Cvoid}), sp, ud, callback)
end

function sp_midi2cps(nn)
    ccall((:sp_midi2cps, soundpipe), Cfloat, (Cfloat,), nn)
end

function sp_set(p, val)
    ccall((:sp_set, soundpipe), Cint, (Ptr{sp_param}, Cfloat), p, val)
end

function sp_out(sp, chan, val)
    ccall((:sp_out, soundpipe), Cint, (Ptr{sp_data}, UInt32, Cfloat), sp, chan, val)
end

function sp_rand(sp)
    ccall((:sp_rand, soundpipe), UInt32, (Ptr{sp_data},), sp)
end

function sp_srand(sp, val)
    ccall((:sp_srand, soundpipe), Cvoid, (Ptr{sp_data}, UInt32), sp, val)
end

function sp_fft_init(fft, M)
    ccall((:sp_fft_init, soundpipe), Cvoid, (Ptr{sp_fft}, Cint), fft, M)
end

function sp_fftr(fft, buf, FFTsize)
    ccall((:sp_fftr, soundpipe), Cvoid, (Ptr{sp_fft}, Ptr{Cfloat}, Cint), fft, buf, FFTsize)
end

function sp_fft_cpx(fft, buf, FFTsize)
    ccall((:sp_fft_cpx, soundpipe), Cvoid, (Ptr{sp_fft}, Ptr{Cfloat}, Cint), fft, buf, FFTsize)
end

function sp_ifftr(fft, buf, FFTsize)
    ccall((:sp_ifftr, soundpipe), Cvoid, (Ptr{sp_fft}, Ptr{Cfloat}, Cint), fft, buf, FFTsize)
end

function sp_fft_destroy(fft)
    ccall((:sp_fft_destroy, soundpipe), Cvoid, (Ptr{sp_fft},), fft)
end

function sp_ftbl_create(sp, ft, size)
    ccall((:sp_ftbl_create, soundpipe), Cint, (Ptr{sp_data}, Ptr{Ptr{sp_ftbl}}, Cint), sp, ft, size)
end

function sp_ftbl_init(sp, ft, size)
    ccall((:sp_ftbl_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cint), sp, ft, size)
end

function sp_ftbl_bind(sp, ft, tbl, size)
    ccall((:sp_ftbl_bind, soundpipe), Cint, (Ptr{sp_data}, Ptr{Ptr{sp_ftbl}}, Ptr{Cfloat}, Cint), sp, ft, tbl, size)
end

function sp_ftbl_destroy(ft)
    ccall((:sp_ftbl_destroy, soundpipe), Cint, (Ptr{Ptr{sp_ftbl}},), ft)
end

function sp_gen_vals(sp, ft, string)
    ccall((:sp_gen_vals, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, string)
end

function sp_gen_sine(sp, ft)
    ccall((:sp_gen_sine, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}), sp, ft)
end

function sp_gen_file(sp, ft, filename)
    ccall((:sp_gen_file, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, filename)
end

function sp_gen_sinesum(sp, ft, argstring)
    ccall((:sp_gen_sinesum, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, argstring)
end

function sp_gen_line(sp, ft, argstring)
    ccall((:sp_gen_line, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, argstring)
end

function sp_gen_xline(sp, ft, argstring)
    ccall((:sp_gen_xline, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, argstring)
end

function sp_gen_gauss(sp, ft, scale, seed)
    ccall((:sp_gen_gauss, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cfloat, UInt32), sp, ft, scale, seed)
end

function sp_ftbl_loadfile(sp, ft, filename)
    ccall((:sp_ftbl_loadfile, soundpipe), Cint, (Ptr{sp_data}, Ptr{Ptr{sp_ftbl}}, Cstring), sp, ft, filename)
end

function sp_ftbl_loadspa(sp, ft, filename)
    ccall((:sp_ftbl_loadspa, soundpipe), Cint, (Ptr{sp_data}, Ptr{Ptr{sp_ftbl}}, Cstring), sp, ft, filename)
end

function sp_gen_composite(sp, ft, argstring)
    ccall((:sp_gen_composite, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, argstring)
end

function sp_gen_rand(sp, ft, argstring)
    ccall((:sp_gen_rand, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Cstring), sp, ft, argstring)
end

function sp_gen_triangle(sp, ft)
    ccall((:sp_gen_triangle, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}), sp, ft)
end

function sp_tevent_create(te)
    ccall((:sp_tevent_create, soundpipe), Cint, (Ptr{Ptr{sp_tevent}},), te)
end

function sp_tevent_destroy(te)
    ccall((:sp_tevent_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tevent}},), te)
end

function sp_tevent_init(sp, te, reinit, compute, ud)
    ccall((:sp_tevent_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tevent}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}), sp, te, reinit, compute, ud)
end

function sp_tevent_compute(sp, te, in, out)
    ccall((:sp_tevent_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tevent}, Ptr{Cfloat}, Ptr{Cfloat}), sp, te, in, out)
end

function sp_adsr_create(p)
    ccall((:sp_adsr_create, soundpipe), Cint, (Ptr{Ptr{sp_adsr}},), p)
end

function sp_adsr_destroy(p)
    ccall((:sp_adsr_destroy, soundpipe), Cint, (Ptr{Ptr{sp_adsr}},), p)
end

function sp_adsr_init(sp, p)
    ccall((:sp_adsr_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_adsr}), sp, p)
end

function sp_adsr_compute(sp, p, in, out)
    ccall((:sp_adsr_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_adsr}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_allpass_create(p)
    ccall((:sp_allpass_create, soundpipe), Cint, (Ptr{Ptr{sp_allpass}},), p)
end

function sp_allpass_destroy(p)
    ccall((:sp_allpass_destroy, soundpipe), Cint, (Ptr{Ptr{sp_allpass}},), p)
end

function sp_allpass_init(sp, p, looptime)
    ccall((:sp_allpass_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_allpass}, Cfloat), sp, p, looptime)
end

function sp_allpass_compute(sp, p, in, out)
    ccall((:sp_allpass_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_allpass}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_atone_create(p)
    ccall((:sp_atone_create, soundpipe), Cint, (Ptr{Ptr{sp_atone}},), p)
end

function sp_atone_destroy(p)
    ccall((:sp_atone_destroy, soundpipe), Cint, (Ptr{Ptr{sp_atone}},), p)
end

function sp_atone_init(sp, p)
    ccall((:sp_atone_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_atone}), sp, p)
end

function sp_atone_compute(sp, p, in, out)
    ccall((:sp_atone_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_atone}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_autowah_create(p)
    ccall((:sp_autowah_create, soundpipe), Cint, (Ptr{Ptr{sp_autowah}},), p)
end

function sp_autowah_destroy(p)
    ccall((:sp_autowah_destroy, soundpipe), Cint, (Ptr{Ptr{sp_autowah}},), p)
end

function sp_autowah_init(sp, p)
    ccall((:sp_autowah_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_autowah}), sp, p)
end

function sp_autowah_compute(sp, p, in, out)
    ccall((:sp_autowah_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_autowah}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_bal_create(p)
    ccall((:sp_bal_create, soundpipe), Cint, (Ptr{Ptr{sp_bal}},), p)
end

function sp_bal_destroy(p)
    ccall((:sp_bal_destroy, soundpipe), Cint, (Ptr{Ptr{sp_bal}},), p)
end

function sp_bal_init(sp, p)
    ccall((:sp_bal_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bal}), sp, p)
end

function sp_bal_compute(sp, p, sig, comp, out)
    ccall((:sp_bal_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bal}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, sig, comp, out)
end

function sp_bar_create(p)
    ccall((:sp_bar_create, soundpipe), Cint, (Ptr{Ptr{sp_bar}},), p)
end

function sp_bar_destroy(p)
    ccall((:sp_bar_destroy, soundpipe), Cint, (Ptr{Ptr{sp_bar}},), p)
end

function sp_bar_init(sp, p, iK, ib)
    ccall((:sp_bar_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bar}, Cfloat, Cfloat), sp, p, iK, ib)
end

function sp_bar_compute(sp, p, in, out)
    ccall((:sp_bar_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bar}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_biquad_create(p)
    ccall((:sp_biquad_create, soundpipe), Cint, (Ptr{Ptr{sp_biquad}},), p)
end

function sp_biquad_destroy(p)
    ccall((:sp_biquad_destroy, soundpipe), Cint, (Ptr{Ptr{sp_biquad}},), p)
end

function sp_biquad_init(sp, p)
    ccall((:sp_biquad_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_biquad}), sp, p)
end

function sp_biquad_compute(sp, p, in, out)
    ccall((:sp_biquad_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_biquad}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_biscale_create(p)
    ccall((:sp_biscale_create, soundpipe), Cint, (Ptr{Ptr{sp_biscale}},), p)
end

function sp_biscale_destroy(p)
    ccall((:sp_biscale_destroy, soundpipe), Cint, (Ptr{Ptr{sp_biscale}},), p)
end

function sp_biscale_init(sp, p)
    ccall((:sp_biscale_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_biscale}), sp, p)
end

function sp_biscale_compute(sp, p, in, out)
    ccall((:sp_biscale_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_biscale}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_blsaw_create(p)
    ccall((:sp_blsaw_create, soundpipe), Cint, (Ptr{Ptr{sp_blsaw}},), p)
end

function sp_blsaw_destroy(p)
    ccall((:sp_blsaw_destroy, soundpipe), Cint, (Ptr{Ptr{sp_blsaw}},), p)
end

function sp_blsaw_init(sp, p)
    ccall((:sp_blsaw_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_blsaw}), sp, p)
end

function sp_blsaw_compute(sp, p, in, out)
    ccall((:sp_blsaw_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_blsaw}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_blsquare_create(p)
    ccall((:sp_blsquare_create, soundpipe), Cint, (Ptr{Ptr{sp_blsquare}},), p)
end

function sp_blsquare_destroy(p)
    ccall((:sp_blsquare_destroy, soundpipe), Cint, (Ptr{Ptr{sp_blsquare}},), p)
end

function sp_blsquare_init(sp, p)
    ccall((:sp_blsquare_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_blsquare}), sp, p)
end

function sp_blsquare_compute(sp, p, in, out)
    ccall((:sp_blsquare_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_blsquare}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_bltriangle_create(p)
    ccall((:sp_bltriangle_create, soundpipe), Cint, (Ptr{Ptr{sp_bltriangle}},), p)
end

function sp_bltriangle_destroy(p)
    ccall((:sp_bltriangle_destroy, soundpipe), Cint, (Ptr{Ptr{sp_bltriangle}},), p)
end

function sp_bltriangle_init(sp, p)
    ccall((:sp_bltriangle_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bltriangle}), sp, p)
end

function sp_bltriangle_compute(sp, p, in, out)
    ccall((:sp_bltriangle_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bltriangle}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_fold_create(p)
    ccall((:sp_fold_create, soundpipe), Cint, (Ptr{Ptr{sp_fold}},), p)
end

function sp_fold_destroy(p)
    ccall((:sp_fold_destroy, soundpipe), Cint, (Ptr{Ptr{sp_fold}},), p)
end

function sp_fold_init(sp, p)
    ccall((:sp_fold_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fold}), sp, p)
end

function sp_fold_compute(sp, p, in, out)
    ccall((:sp_fold_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fold}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_bitcrush_create(p)
    ccall((:sp_bitcrush_create, soundpipe), Cint, (Ptr{Ptr{sp_bitcrush}},), p)
end

function sp_bitcrush_destroy(p)
    ccall((:sp_bitcrush_destroy, soundpipe), Cint, (Ptr{Ptr{sp_bitcrush}},), p)
end

function sp_bitcrush_init(sp, p)
    ccall((:sp_bitcrush_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bitcrush}), sp, p)
end

function sp_bitcrush_compute(sp, p, in, out)
    ccall((:sp_bitcrush_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_bitcrush}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_brown_create(p)
    ccall((:sp_brown_create, soundpipe), Cint, (Ptr{Ptr{sp_brown}},), p)
end

function sp_brown_destroy(p)
    ccall((:sp_brown_destroy, soundpipe), Cint, (Ptr{Ptr{sp_brown}},), p)
end

function sp_brown_init(sp, p)
    ccall((:sp_brown_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_brown}), sp, p)
end

function sp_brown_compute(sp, p, in, out)
    ccall((:sp_brown_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_brown}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_butbp_create(p)
    ccall((:sp_butbp_create, soundpipe), Cint, (Ptr{Ptr{sp_butbp}},), p)
end

function sp_butbp_destroy(p)
    ccall((:sp_butbp_destroy, soundpipe), Cint, (Ptr{Ptr{sp_butbp}},), p)
end

function sp_butbp_init(sp, p)
    ccall((:sp_butbp_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butbp}), sp, p)
end

function sp_butbp_compute(sp, p, in, out)
    ccall((:sp_butbp_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butbp}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_butbr_create(p)
    ccall((:sp_butbr_create, soundpipe), Cint, (Ptr{Ptr{sp_butbr}},), p)
end

function sp_butbr_destroy(p)
    ccall((:sp_butbr_destroy, soundpipe), Cint, (Ptr{Ptr{sp_butbr}},), p)
end

function sp_butbr_init(sp, p)
    ccall((:sp_butbr_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butbr}), sp, p)
end

function sp_butbr_compute(sp, p, in, out)
    ccall((:sp_butbr_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butbr}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_buthp_create(p)
    ccall((:sp_buthp_create, soundpipe), Cint, (Ptr{Ptr{sp_buthp}},), p)
end

function sp_buthp_destroy(p)
    ccall((:sp_buthp_destroy, soundpipe), Cint, (Ptr{Ptr{sp_buthp}},), p)
end

function sp_buthp_init(sp, p)
    ccall((:sp_buthp_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_buthp}), sp, p)
end

function sp_buthp_compute(sp, p, in, out)
    ccall((:sp_buthp_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_buthp}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_butlp_create(p)
    ccall((:sp_butlp_create, soundpipe), Cint, (Ptr{Ptr{sp_butlp}},), p)
end

function sp_butlp_destroy(p)
    ccall((:sp_butlp_destroy, soundpipe), Cint, (Ptr{Ptr{sp_butlp}},), p)
end

function sp_butlp_init(sp, p)
    ccall((:sp_butlp_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butlp}), sp, p)
end

function sp_butlp_compute(sp, p, in, out)
    ccall((:sp_butlp_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_butlp}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_clip_create(p)
    ccall((:sp_clip_create, soundpipe), Cint, (Ptr{Ptr{sp_clip}},), p)
end

function sp_clip_destroy(p)
    ccall((:sp_clip_destroy, soundpipe), Cint, (Ptr{Ptr{sp_clip}},), p)
end

function sp_clip_init(sp, p)
    ccall((:sp_clip_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_clip}), sp, p)
end

function sp_clip_compute(sp, p, in, out)
    ccall((:sp_clip_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_clip}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_clock_create(p)
    ccall((:sp_clock_create, soundpipe), Cint, (Ptr{Ptr{sp_clock}},), p)
end

function sp_clock_destroy(p)
    ccall((:sp_clock_destroy, soundpipe), Cint, (Ptr{Ptr{sp_clock}},), p)
end

function sp_clock_init(sp, p)
    ccall((:sp_clock_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_clock}), sp, p)
end

function sp_clock_compute(sp, p, trig, out)
    ccall((:sp_clock_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_clock}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, out)
end

function sp_comb_create(p)
    ccall((:sp_comb_create, soundpipe), Cint, (Ptr{Ptr{sp_comb}},), p)
end

function sp_comb_destroy(p)
    ccall((:sp_comb_destroy, soundpipe), Cint, (Ptr{Ptr{sp_comb}},), p)
end

function sp_comb_init(sp, p, looptime)
    ccall((:sp_comb_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_comb}, Cfloat), sp, p, looptime)
end

function sp_comb_compute(sp, p, in, out)
    ccall((:sp_comb_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_comb}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_compressor_create(p)
    ccall((:sp_compressor_create, soundpipe), Cint, (Ptr{Ptr{sp_compressor}},), p)
end

function sp_compressor_destroy(p)
    ccall((:sp_compressor_destroy, soundpipe), Cint, (Ptr{Ptr{sp_compressor}},), p)
end

function sp_compressor_init(sp, p)
    ccall((:sp_compressor_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_compressor}), sp, p)
end

function sp_compressor_compute(sp, p, in, out)
    ccall((:sp_compressor_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_compressor}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_count_create(p)
    ccall((:sp_count_create, soundpipe), Cint, (Ptr{Ptr{sp_count}},), p)
end

function sp_count_destroy(p)
    ccall((:sp_count_destroy, soundpipe), Cint, (Ptr{Ptr{sp_count}},), p)
end

function sp_count_init(sp, p)
    ccall((:sp_count_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_count}), sp, p)
end

function sp_count_compute(sp, p, in, out)
    ccall((:sp_count_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_count}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_conv_create(p)
    ccall((:sp_conv_create, soundpipe), Cint, (Ptr{Ptr{sp_conv}},), p)
end

function sp_conv_destroy(p)
    ccall((:sp_conv_destroy, soundpipe), Cint, (Ptr{Ptr{sp_conv}},), p)
end

function sp_conv_init(sp, p, ft, iPartLen)
    ccall((:sp_conv_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_conv}, Ptr{sp_ftbl}, Cfloat), sp, p, ft, iPartLen)
end

function sp_conv_compute(sp, p, in, out)
    ccall((:sp_conv_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_conv}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_crossfade_create(p)
    ccall((:sp_crossfade_create, soundpipe), Cint, (Ptr{Ptr{sp_crossfade}},), p)
end

function sp_crossfade_destroy(p)
    ccall((:sp_crossfade_destroy, soundpipe), Cint, (Ptr{Ptr{sp_crossfade}},), p)
end

function sp_crossfade_init(sp, p)
    ccall((:sp_crossfade_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_crossfade}), sp, p)
end

function sp_crossfade_compute(sp, p, in1, in2, out)
    ccall((:sp_crossfade_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_crossfade}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in1, in2, out)
end

function sp_dcblock_create(p)
    ccall((:sp_dcblock_create, soundpipe), Cint, (Ptr{Ptr{sp_dcblock}},), p)
end

function sp_dcblock_destroy(p)
    ccall((:sp_dcblock_destroy, soundpipe), Cint, (Ptr{Ptr{sp_dcblock}},), p)
end

function sp_dcblock_init(sp, p)
    ccall((:sp_dcblock_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dcblock}), sp, p)
end

function sp_dcblock_compute(sp, p, in, out)
    ccall((:sp_dcblock_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dcblock}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_delay_create(p)
    ccall((:sp_delay_create, soundpipe), Cint, (Ptr{Ptr{sp_delay}},), p)
end

function sp_delay_destroy(p)
    ccall((:sp_delay_destroy, soundpipe), Cint, (Ptr{Ptr{sp_delay}},), p)
end

function sp_delay_init(sp, p, time)
    ccall((:sp_delay_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_delay}, Cfloat), sp, p, time)
end

function sp_delay_compute(sp, p, in, out)
    ccall((:sp_delay_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_delay}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_diode_create(p)
    ccall((:sp_diode_create, soundpipe), Cint, (Ptr{Ptr{sp_diode}},), p)
end

function sp_diode_destroy(p)
    ccall((:sp_diode_destroy, soundpipe), Cint, (Ptr{Ptr{sp_diode}},), p)
end

function sp_diode_init(sp, p)
    ccall((:sp_diode_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_diode}), sp, p)
end

function sp_diode_compute(sp, p, in, out)
    ccall((:sp_diode_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_diode}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_dist_create(p)
    ccall((:sp_dist_create, soundpipe), Cint, (Ptr{Ptr{sp_dist}},), p)
end

function sp_dist_destroy(p)
    ccall((:sp_dist_destroy, soundpipe), Cint, (Ptr{Ptr{sp_dist}},), p)
end

function sp_dist_init(sp, p)
    ccall((:sp_dist_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dist}), sp, p)
end

function sp_dist_compute(sp, p, in, out)
    ccall((:sp_dist_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dist}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_dmetro_create(p)
    ccall((:sp_dmetro_create, soundpipe), Cint, (Ptr{Ptr{sp_dmetro}},), p)
end

function sp_dmetro_destroy(p)
    ccall((:sp_dmetro_destroy, soundpipe), Cint, (Ptr{Ptr{sp_dmetro}},), p)
end

function sp_dmetro_init(sp, p)
    ccall((:sp_dmetro_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dmetro}), sp, p)
end

function sp_dmetro_compute(sp, p, in, out)
    ccall((:sp_dmetro_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dmetro}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_drip_create(p)
    ccall((:sp_drip_create, soundpipe), Cint, (Ptr{Ptr{sp_drip}},), p)
end

function sp_drip_destroy(p)
    ccall((:sp_drip_destroy, soundpipe), Cint, (Ptr{Ptr{sp_drip}},), p)
end

function sp_drip_init(sp, p, dettack)
    ccall((:sp_drip_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_drip}, Cfloat), sp, p, dettack)
end

function sp_drip_compute(sp, p, trig, out)
    ccall((:sp_drip_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_drip}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, out)
end

function sp_dtrig_create(p)
    ccall((:sp_dtrig_create, soundpipe), Cint, (Ptr{Ptr{sp_dtrig}},), p)
end

function sp_dtrig_destroy(p)
    ccall((:sp_dtrig_destroy, soundpipe), Cint, (Ptr{Ptr{sp_dtrig}},), p)
end

function sp_dtrig_init(sp, p, ft)
    ccall((:sp_dtrig_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dtrig}, Ptr{sp_ftbl}), sp, p, ft)
end

function sp_dtrig_compute(sp, p, in, out)
    ccall((:sp_dtrig_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dtrig}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_dust_create(p)
    ccall((:sp_dust_create, soundpipe), Cint, (Ptr{Ptr{sp_dust}},), p)
end

function sp_dust_destroy(p)
    ccall((:sp_dust_destroy, soundpipe), Cint, (Ptr{Ptr{sp_dust}},), p)
end

function sp_dust_init(sp, p)
    ccall((:sp_dust_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dust}), sp, p)
end

function sp_dust_compute(sp, p, in, out)
    ccall((:sp_dust_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_dust}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_eqfil_create(p)
    ccall((:sp_eqfil_create, soundpipe), Cint, (Ptr{Ptr{sp_eqfil}},), p)
end

function sp_eqfil_destroy(p)
    ccall((:sp_eqfil_destroy, soundpipe), Cint, (Ptr{Ptr{sp_eqfil}},), p)
end

function sp_eqfil_init(sp, p)
    ccall((:sp_eqfil_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_eqfil}), sp, p)
end

function sp_eqfil_compute(sp, p, in, out)
    ccall((:sp_eqfil_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_eqfil}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_expon_create(p)
    ccall((:sp_expon_create, soundpipe), Cint, (Ptr{Ptr{sp_expon}},), p)
end

function sp_expon_destroy(p)
    ccall((:sp_expon_destroy, soundpipe), Cint, (Ptr{Ptr{sp_expon}},), p)
end

function sp_expon_init(sp, p)
    ccall((:sp_expon_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_expon}), sp, p)
end

function sp_expon_compute(sp, p, in, out)
    ccall((:sp_expon_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_expon}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_fof_create(p)
    ccall((:sp_fof_create, soundpipe), Cint, (Ptr{Ptr{sp_fof}},), p)
end

function sp_fof_destroy(p)
    ccall((:sp_fof_destroy, soundpipe), Cint, (Ptr{Ptr{sp_fof}},), p)
end

function sp_fof_init(sp, p, sine, win, iolaps, iphs)
    ccall((:sp_fof_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fof}, Ptr{sp_ftbl}, Ptr{sp_ftbl}, Cint, Cfloat), sp, p, sine, win, iolaps, iphs)
end

function sp_fof_compute(sp, p, in, out)
    ccall((:sp_fof_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fof}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_fog_create(p)
    ccall((:sp_fog_create, soundpipe), Cint, (Ptr{Ptr{sp_fog}},), p)
end

function sp_fog_destroy(p)
    ccall((:sp_fog_destroy, soundpipe), Cint, (Ptr{Ptr{sp_fog}},), p)
end

function sp_fog_init(sp, p, wav, win, iolaps, iphs)
    ccall((:sp_fog_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fog}, Ptr{sp_ftbl}, Ptr{sp_ftbl}, Cint, Cfloat), sp, p, wav, win, iolaps, iphs)
end

function sp_fog_compute(sp, p, in, out)
    ccall((:sp_fog_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fog}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_fofilt_create(t)
    ccall((:sp_fofilt_create, soundpipe), Cint, (Ptr{Ptr{sp_fofilt}},), t)
end

function sp_fofilt_destroy(t)
    ccall((:sp_fofilt_destroy, soundpipe), Cint, (Ptr{Ptr{sp_fofilt}},), t)
end

function sp_fofilt_init(sp, p)
    ccall((:sp_fofilt_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fofilt}), sp, p)
end

function sp_fofilt_compute(sp, p, in, out)
    ccall((:sp_fofilt_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fofilt}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_foo_create(p)
    ccall((:sp_foo_create, soundpipe), Cint, (Ptr{Ptr{sp_foo}},), p)
end

function sp_foo_destroy(p)
    ccall((:sp_foo_destroy, soundpipe), Cint, (Ptr{Ptr{sp_foo}},), p)
end

function sp_foo_init(sp, p)
    ccall((:sp_foo_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_foo}), sp, p)
end

function sp_foo_compute(sp, p, in, out)
    ccall((:sp_foo_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_foo}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_fosc_create(p)
    ccall((:sp_fosc_create, soundpipe), Cint, (Ptr{Ptr{sp_fosc}},), p)
end

function sp_fosc_destroy(p)
    ccall((:sp_fosc_destroy, soundpipe), Cint, (Ptr{Ptr{sp_fosc}},), p)
end

function sp_fosc_init(sp, p, ft)
    ccall((:sp_fosc_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fosc}, Ptr{sp_ftbl}), sp, p, ft)
end

function sp_fosc_compute(sp, p, in, out)
    ccall((:sp_fosc_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_fosc}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_gbuzz_create(p)
    ccall((:sp_gbuzz_create, soundpipe), Cint, (Ptr{Ptr{sp_gbuzz}},), p)
end

function sp_gbuzz_destroy(p)
    ccall((:sp_gbuzz_destroy, soundpipe), Cint, (Ptr{Ptr{sp_gbuzz}},), p)
end

function sp_gbuzz_init(sp, p, ft, iphs)
    ccall((:sp_gbuzz_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_gbuzz}, Ptr{sp_ftbl}, Cfloat), sp, p, ft, iphs)
end

function sp_gbuzz_compute(sp, p, in, out)
    ccall((:sp_gbuzz_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_gbuzz}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_hilbert_create(p)
    ccall((:sp_hilbert_create, soundpipe), Cint, (Ptr{Ptr{sp_hilbert}},), p)
end

function sp_hilbert_destroy(p)
    ccall((:sp_hilbert_destroy, soundpipe), Cint, (Ptr{Ptr{sp_hilbert}},), p)
end

function sp_hilbert_init(sp, p)
    ccall((:sp_hilbert_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_hilbert}), sp, p)
end

function sp_hilbert_compute(sp, p, in, out1, out2)
    ccall((:sp_hilbert_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_hilbert}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out1, out2)
end

function sp_in_create(p)
    ccall((:sp_in_create, soundpipe), Cint, (Ptr{Ptr{sp_in}},), p)
end

function sp_in_destroy(p)
    ccall((:sp_in_destroy, soundpipe), Cint, (Ptr{Ptr{sp_in}},), p)
end

function sp_in_init(sp, p)
    ccall((:sp_in_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_in}), sp, p)
end

function sp_in_compute(sp, p, in, out)
    ccall((:sp_in_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_in}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_incr_create(p)
    ccall((:sp_incr_create, soundpipe), Cint, (Ptr{Ptr{sp_incr}},), p)
end

function sp_incr_destroy(p)
    ccall((:sp_incr_destroy, soundpipe), Cint, (Ptr{Ptr{sp_incr}},), p)
end

function sp_incr_init(sp, p, val)
    ccall((:sp_incr_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_incr}, Cfloat), sp, p, val)
end

function sp_incr_compute(sp, p, in, out)
    ccall((:sp_incr_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_incr}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_jcrev_create(p)
    ccall((:sp_jcrev_create, soundpipe), Cint, (Ptr{Ptr{sp_jcrev}},), p)
end

function sp_jcrev_destroy(p)
    ccall((:sp_jcrev_destroy, soundpipe), Cint, (Ptr{Ptr{sp_jcrev}},), p)
end

function sp_jcrev_init(sp, p)
    ccall((:sp_jcrev_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_jcrev}), sp, p)
end

function sp_jcrev_compute(sp, p, in, out)
    ccall((:sp_jcrev_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_jcrev}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_jitter_create(p)
    ccall((:sp_jitter_create, soundpipe), Cint, (Ptr{Ptr{sp_jitter}},), p)
end

function sp_jitter_destroy(p)
    ccall((:sp_jitter_destroy, soundpipe), Cint, (Ptr{Ptr{sp_jitter}},), p)
end

function sp_jitter_init(sp, p)
    ccall((:sp_jitter_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_jitter}), sp, p)
end

function sp_jitter_compute(sp, p, in, out)
    ccall((:sp_jitter_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_jitter}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_line_create(p)
    ccall((:sp_line_create, soundpipe), Cint, (Ptr{Ptr{sp_line}},), p)
end

function sp_line_destroy(p)
    ccall((:sp_line_destroy, soundpipe), Cint, (Ptr{Ptr{sp_line}},), p)
end

function sp_line_init(sp, p)
    ccall((:sp_line_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_line}), sp, p)
end

function sp_line_compute(sp, p, in, out)
    ccall((:sp_line_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_line}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_lpc_create(lpc)
    ccall((:sp_lpc_create, soundpipe), Cint, (Ptr{Ptr{sp_lpc}},), lpc)
end

function sp_lpc_destroy(lpc)
    ccall((:sp_lpc_destroy, soundpipe), Cint, (Ptr{Ptr{sp_lpc}},), lpc)
end

function sp_lpc_init(sp, lpc, framesize)
    ccall((:sp_lpc_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_lpc}, Cint), sp, lpc, framesize)
end

function sp_lpc_synth(sp, lpc, ft)
    ccall((:sp_lpc_synth, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_lpc}, Ptr{sp_ftbl}), sp, lpc, ft)
end

function sp_lpc_compute(sp, lpc, in, out)
    ccall((:sp_lpc_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_lpc}, Ptr{Cfloat}, Ptr{Cfloat}), sp, lpc, in, out)
end

function sp_lpf18_create(p)
    ccall((:sp_lpf18_create, soundpipe), Cint, (Ptr{Ptr{sp_lpf18}},), p)
end

function sp_lpf18_destroy(p)
    ccall((:sp_lpf18_destroy, soundpipe), Cint, (Ptr{Ptr{sp_lpf18}},), p)
end

function sp_lpf18_init(sp, p)
    ccall((:sp_lpf18_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_lpf18}), sp, p)
end

function sp_lpf18_compute(sp, p, in, out)
    ccall((:sp_lpf18_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_lpf18}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_maygate_create(p)
    ccall((:sp_maygate_create, soundpipe), Cint, (Ptr{Ptr{sp_maygate}},), p)
end

function sp_maygate_destroy(p)
    ccall((:sp_maygate_destroy, soundpipe), Cint, (Ptr{Ptr{sp_maygate}},), p)
end

function sp_maygate_init(sp, p)
    ccall((:sp_maygate_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_maygate}), sp, p)
end

function sp_maygate_compute(sp, p, in, out)
    ccall((:sp_maygate_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_maygate}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_metro_create(p)
    ccall((:sp_metro_create, soundpipe), Cint, (Ptr{Ptr{sp_metro}},), p)
end

function sp_metro_destroy(p)
    ccall((:sp_metro_destroy, soundpipe), Cint, (Ptr{Ptr{sp_metro}},), p)
end

function sp_metro_init(sp, p)
    ccall((:sp_metro_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_metro}), sp, p)
end

function sp_metro_compute(sp, p, in, out)
    ccall((:sp_metro_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_metro}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_mincer_create(p)
    ccall((:sp_mincer_create, soundpipe), Cint, (Ptr{Ptr{sp_mincer}},), p)
end

function sp_mincer_destroy(p)
    ccall((:sp_mincer_destroy, soundpipe), Cint, (Ptr{Ptr{sp_mincer}},), p)
end

function sp_mincer_init(sp, p, ft, winsize)
    ccall((:sp_mincer_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_mincer}, Ptr{sp_ftbl}, Cint), sp, p, ft, winsize)
end

function sp_mincer_compute(sp, p, in, out)
    ccall((:sp_mincer_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_mincer}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_mode_create(p)
    ccall((:sp_mode_create, soundpipe), Cint, (Ptr{Ptr{sp_mode}},), p)
end

function sp_mode_destroy(p)
    ccall((:sp_mode_destroy, soundpipe), Cint, (Ptr{Ptr{sp_mode}},), p)
end

function sp_mode_init(sp, p)
    ccall((:sp_mode_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_mode}), sp, p)
end

function sp_mode_compute(sp, p, in, out)
    ccall((:sp_mode_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_mode}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_moogladder_create(t)
    ccall((:sp_moogladder_create, soundpipe), Cint, (Ptr{Ptr{sp_moogladder}},), t)
end

function sp_moogladder_destroy(t)
    ccall((:sp_moogladder_destroy, soundpipe), Cint, (Ptr{Ptr{sp_moogladder}},), t)
end

function sp_moogladder_init(sp, p)
    ccall((:sp_moogladder_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_moogladder}), sp, p)
end

function sp_moogladder_compute(sp, p, in, out)
    ccall((:sp_moogladder_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_moogladder}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_noise_create(ns)
    ccall((:sp_noise_create, soundpipe), Cint, (Ptr{Ptr{sp_noise}},), ns)
end

function sp_noise_init(sp, ns)
    ccall((:sp_noise_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_noise}), sp, ns)
end

function sp_noise_compute(sp, ns, in, out)
    ccall((:sp_noise_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_noise}, Ptr{Cfloat}, Ptr{Cfloat}), sp, ns, in, out)
end

function sp_noise_destroy(ns)
    ccall((:sp_noise_destroy, soundpipe), Cint, (Ptr{Ptr{sp_noise}},), ns)
end

function sp_nsmp_create(p)
    ccall((:sp_nsmp_create, soundpipe), Cint, (Ptr{Ptr{sp_nsmp}},), p)
end

function sp_nsmp_destroy(p)
    ccall((:sp_nsmp_destroy, soundpipe), Cint, (Ptr{Ptr{sp_nsmp}},), p)
end

function sp_nsmp_init(sp, p, ft, sr, ini)
    ccall((:sp_nsmp_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_nsmp}, Ptr{sp_ftbl}, Cint, Cstring), sp, p, ft, sr, ini)
end

function sp_nsmp_compute(sp, p, in, out)
    ccall((:sp_nsmp_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_nsmp}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_nsmp_print_index(sp, p)
    ccall((:sp_nsmp_print_index, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_nsmp}), sp, p)
end

function sp_osc_create(osc)
    ccall((:sp_osc_create, soundpipe), Cint, (Ptr{Ptr{sp_osc}},), osc)
end

function sp_osc_destroy(osc)
    ccall((:sp_osc_destroy, soundpipe), Cint, (Ptr{Ptr{sp_osc}},), osc)
end

function sp_osc_init(sp, osc, ft, iphs)
    ccall((:sp_osc_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_osc}, Ptr{sp_ftbl}, Cfloat), sp, osc, ft, iphs)
end

function sp_osc_compute(sp, osc, in, out)
    ccall((:sp_osc_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_osc}, Ptr{Cfloat}, Ptr{Cfloat}), sp, osc, in, out)
end

function sp_oscmorph_create(p)
    ccall((:sp_oscmorph_create, soundpipe), Cint, (Ptr{Ptr{sp_oscmorph}},), p)
end

function sp_oscmorph_destroy(p)
    ccall((:sp_oscmorph_destroy, soundpipe), Cint, (Ptr{Ptr{sp_oscmorph}},), p)
end

function sp_oscmorph_init(sp, osc, ft, nft, iphs)
    ccall((:sp_oscmorph_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_oscmorph}, Ptr{Ptr{sp_ftbl}}, Cint, Cfloat), sp, osc, ft, nft, iphs)
end

function sp_oscmorph_compute(sp, p, in, out)
    ccall((:sp_oscmorph_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_oscmorph}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_pan2_create(p)
    ccall((:sp_pan2_create, soundpipe), Cint, (Ptr{Ptr{sp_pan2}},), p)
end

function sp_pan2_destroy(p)
    ccall((:sp_pan2_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pan2}},), p)
end

function sp_pan2_init(sp, p)
    ccall((:sp_pan2_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pan2}), sp, p)
end

function sp_pan2_compute(sp, p, in, out1, out2)
    ccall((:sp_pan2_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pan2}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out1, out2)
end

function sp_panst_create(p)
    ccall((:sp_panst_create, soundpipe), Cint, (Ptr{Ptr{sp_panst}},), p)
end

function sp_panst_destroy(p)
    ccall((:sp_panst_destroy, soundpipe), Cint, (Ptr{Ptr{sp_panst}},), p)
end

function sp_panst_init(sp, p)
    ccall((:sp_panst_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_panst}), sp, p)
end

function sp_panst_compute(sp, p, in1, in2, out1, out2)
    ccall((:sp_panst_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_panst}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in1, in2, out1, out2)
end

function sp_pareq_create(p)
    ccall((:sp_pareq_create, soundpipe), Cint, (Ptr{Ptr{sp_pareq}},), p)
end

function sp_pareq_destroy(p)
    ccall((:sp_pareq_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pareq}},), p)
end

function sp_pareq_init(sp, p)
    ccall((:sp_pareq_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pareq}), sp, p)
end

function sp_pareq_compute(sp, p, in, out)
    ccall((:sp_pareq_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pareq}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_paulstretch_create(p)
    ccall((:sp_paulstretch_create, soundpipe), Cint, (Ptr{Ptr{sp_paulstretch}},), p)
end

function sp_paulstretch_destroy(p)
    ccall((:sp_paulstretch_destroy, soundpipe), Cint, (Ptr{Ptr{sp_paulstretch}},), p)
end

function sp_paulstretch_init(sp, p, ft, windowsize, stretch)
    ccall((:sp_paulstretch_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_paulstretch}, Ptr{sp_ftbl}, Cfloat, Cfloat), sp, p, ft, windowsize, stretch)
end

function sp_paulstretch_compute(sp, p, in, out)
    ccall((:sp_paulstretch_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_paulstretch}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_pdhalf_create(p)
    ccall((:sp_pdhalf_create, soundpipe), Cint, (Ptr{Ptr{sp_pdhalf}},), p)
end

function sp_pdhalf_destroy(p)
    ccall((:sp_pdhalf_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pdhalf}},), p)
end

function sp_pdhalf_init(sp, p)
    ccall((:sp_pdhalf_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pdhalf}), sp, p)
end

function sp_pdhalf_compute(sp, p, in, out)
    ccall((:sp_pdhalf_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pdhalf}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_peaklim_create(p)
    ccall((:sp_peaklim_create, soundpipe), Cint, (Ptr{Ptr{sp_peaklim}},), p)
end

function sp_peaklim_destroy(p)
    ccall((:sp_peaklim_destroy, soundpipe), Cint, (Ptr{Ptr{sp_peaklim}},), p)
end

function sp_peaklim_init(sp, p)
    ccall((:sp_peaklim_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_peaklim}), sp, p)
end

function sp_peaklim_compute(sp, p, in, out)
    ccall((:sp_peaklim_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_peaklim}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_phaser_create(p)
    ccall((:sp_phaser_create, soundpipe), Cint, (Ptr{Ptr{sp_phaser}},), p)
end

function sp_phaser_destroy(p)
    ccall((:sp_phaser_destroy, soundpipe), Cint, (Ptr{Ptr{sp_phaser}},), p)
end

function sp_phaser_init(sp, p)
    ccall((:sp_phaser_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_phaser}), sp, p)
end

function sp_phaser_compute(sp, p, in1, in2, out1, out2)
    ccall((:sp_phaser_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_phaser}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in1, in2, out1, out2)
end

function sp_phasor_create(p)
    ccall((:sp_phasor_create, soundpipe), Cint, (Ptr{Ptr{sp_phasor}},), p)
end

function sp_phasor_destroy(p)
    ccall((:sp_phasor_destroy, soundpipe), Cint, (Ptr{Ptr{sp_phasor}},), p)
end

function sp_phasor_init(sp, p, iphs)
    ccall((:sp_phasor_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_phasor}, Cfloat), sp, p, iphs)
end

function sp_phasor_compute(sp, p, in, out)
    ccall((:sp_phasor_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_phasor}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_pinknoise_create(p)
    ccall((:sp_pinknoise_create, soundpipe), Cint, (Ptr{Ptr{sp_pinknoise}},), p)
end

function sp_pinknoise_destroy(p)
    ccall((:sp_pinknoise_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pinknoise}},), p)
end

function sp_pinknoise_init(sp, p)
    ccall((:sp_pinknoise_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pinknoise}), sp, p)
end

function sp_pinknoise_compute(sp, p, in, out)
    ccall((:sp_pinknoise_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pinknoise}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_pitchamdf_create(p)
    ccall((:sp_pitchamdf_create, soundpipe), Cint, (Ptr{Ptr{sp_pitchamdf}},), p)
end

function sp_pitchamdf_destroy(p)
    ccall((:sp_pitchamdf_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pitchamdf}},), p)
end

function sp_pitchamdf_init(sp, p, imincps, imaxcps)
    ccall((:sp_pitchamdf_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pitchamdf}, Cfloat, Cfloat), sp, p, imincps, imaxcps)
end

function sp_pitchamdf_compute(sp, p, in, cps, rms)
    ccall((:sp_pitchamdf_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pitchamdf}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, cps, rms)
end

function sp_pluck_create(p)
    ccall((:sp_pluck_create, soundpipe), Cint, (Ptr{Ptr{sp_pluck}},), p)
end

function sp_pluck_destroy(p)
    ccall((:sp_pluck_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pluck}},), p)
end

function sp_pluck_init(sp, p, ifreq)
    ccall((:sp_pluck_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pluck}, Cfloat), sp, p, ifreq)
end

function sp_pluck_compute(sp, p, trig, out)
    ccall((:sp_pluck_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pluck}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, out)
end

function sp_port_create(p)
    ccall((:sp_port_create, soundpipe), Cint, (Ptr{Ptr{sp_port}},), p)
end

function sp_port_destroy(p)
    ccall((:sp_port_destroy, soundpipe), Cint, (Ptr{Ptr{sp_port}},), p)
end

function sp_port_init(sp, p, htime)
    ccall((:sp_port_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_port}, Cfloat), sp, p, htime)
end

function sp_port_compute(sp, p, in, out)
    ccall((:sp_port_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_port}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_port_reset(sp, p, in)
    ccall((:sp_port_reset, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_port}, Ptr{Cfloat}), sp, p, in)
end

function sp_posc3_create(posc3)
    ccall((:sp_posc3_create, soundpipe), Cint, (Ptr{Ptr{sp_posc3}},), posc3)
end

function sp_posc3_destroy(posc3)
    ccall((:sp_posc3_destroy, soundpipe), Cint, (Ptr{Ptr{sp_posc3}},), posc3)
end

function sp_posc3_init(sp, posc3, ft)
    ccall((:sp_posc3_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_posc3}, Ptr{sp_ftbl}), sp, posc3, ft)
end

function sp_posc3_compute(sp, posc3, in, out)
    ccall((:sp_posc3_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_posc3}, Ptr{Cfloat}, Ptr{Cfloat}), sp, posc3, in, out)
end

function sp_progress_create(p)
    ccall((:sp_progress_create, soundpipe), Cint, (Ptr{Ptr{sp_progress}},), p)
end

function sp_progress_destroy(p)
    ccall((:sp_progress_destroy, soundpipe), Cint, (Ptr{Ptr{sp_progress}},), p)
end

function sp_progress_init(sp, p)
    ccall((:sp_progress_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_progress}), sp, p)
end

function sp_progress_compute(sp, p, in, out)
    ccall((:sp_progress_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_progress}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_prop_create(p)
    ccall((:sp_prop_create, soundpipe), Cint, (Ptr{Ptr{sp_prop}},), p)
end

function sp_prop_destroy(p)
    ccall((:sp_prop_destroy, soundpipe), Cint, (Ptr{Ptr{sp_prop}},), p)
end

function sp_prop_reset(sp, p)
    ccall((:sp_prop_reset, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_prop}), sp, p)
end

function sp_prop_init(sp, p, str)
    ccall((:sp_prop_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_prop}, Cstring), sp, p, str)
end

function sp_prop_compute(sp, p, in, out)
    ccall((:sp_prop_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_prop}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_pshift_create(p)
    ccall((:sp_pshift_create, soundpipe), Cint, (Ptr{Ptr{sp_pshift}},), p)
end

function sp_pshift_destroy(p)
    ccall((:sp_pshift_destroy, soundpipe), Cint, (Ptr{Ptr{sp_pshift}},), p)
end

function sp_pshift_init(sp, p)
    ccall((:sp_pshift_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pshift}), sp, p)
end

function sp_pshift_compute(sp, p, in, out)
    ccall((:sp_pshift_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_pshift}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_ptrack_create(p)
    ccall((:sp_ptrack_create, soundpipe), Cint, (Ptr{Ptr{sp_ptrack}},), p)
end

function sp_ptrack_destroy(p)
    ccall((:sp_ptrack_destroy, soundpipe), Cint, (Ptr{Ptr{sp_ptrack}},), p)
end

function sp_ptrack_init(sp, p, ihopsize, ipeaks)
    ccall((:sp_ptrack_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ptrack}, Cint, Cint), sp, p, ihopsize, ipeaks)
end

function sp_ptrack_compute(sp, p, in, freq, amp)
    ccall((:sp_ptrack_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ptrack}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, freq, amp)
end

function sp_randh_create(p)
    ccall((:sp_randh_create, soundpipe), Cint, (Ptr{Ptr{sp_randh}},), p)
end

function sp_randh_destroy(p)
    ccall((:sp_randh_destroy, soundpipe), Cint, (Ptr{Ptr{sp_randh}},), p)
end

function sp_randh_init(sp, p)
    ccall((:sp_randh_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_randh}), sp, p)
end

function sp_randh_compute(sp, p, in, out)
    ccall((:sp_randh_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_randh}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_randi_create(p)
    ccall((:sp_randi_create, soundpipe), Cint, (Ptr{Ptr{sp_randi}},), p)
end

function sp_randi_destroy(p)
    ccall((:sp_randi_destroy, soundpipe), Cint, (Ptr{Ptr{sp_randi}},), p)
end

function sp_randi_init(sp, p)
    ccall((:sp_randi_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_randi}), sp, p)
end

function sp_randi_compute(sp, p, in, out)
    ccall((:sp_randi_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_randi}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_randmt_seed(p, initKey, keyLength)
    ccall((:sp_randmt_seed, soundpipe), Cvoid, (Ptr{sp_randmt}, Ptr{UInt32}, UInt32), p, initKey, keyLength)
end

function sp_randmt_compute(p)
    ccall((:sp_randmt_compute, soundpipe), UInt32, (Ptr{sp_randmt},), p)
end

function sp_random_create(p)
    ccall((:sp_random_create, soundpipe), Cint, (Ptr{Ptr{sp_random}},), p)
end

function sp_random_destroy(p)
    ccall((:sp_random_destroy, soundpipe), Cint, (Ptr{Ptr{sp_random}},), p)
end

function sp_random_init(sp, p)
    ccall((:sp_random_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_random}), sp, p)
end

function sp_random_compute(sp, p, in, out)
    ccall((:sp_random_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_random}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_reverse_create(p)
    ccall((:sp_reverse_create, soundpipe), Cint, (Ptr{Ptr{sp_reverse}},), p)
end

function sp_reverse_destroy(p)
    ccall((:sp_reverse_destroy, soundpipe), Cint, (Ptr{Ptr{sp_reverse}},), p)
end

function sp_reverse_init(sp, p, delay)
    ccall((:sp_reverse_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_reverse}, Cfloat), sp, p, delay)
end

function sp_reverse_compute(sp, p, in, out)
    ccall((:sp_reverse_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_reverse}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_reson_create(p)
    ccall((:sp_reson_create, soundpipe), Cint, (Ptr{Ptr{sp_reson}},), p)
end

function sp_reson_destroy(p)
    ccall((:sp_reson_destroy, soundpipe), Cint, (Ptr{Ptr{sp_reson}},), p)
end

function sp_reson_init(sp, p)
    ccall((:sp_reson_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_reson}), sp, p)
end

function sp_reson_compute(sp, p, in, out)
    ccall((:sp_reson_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_reson}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_revsc_create(p)
    ccall((:sp_revsc_create, soundpipe), Cint, (Ptr{Ptr{sp_revsc}},), p)
end

function sp_revsc_destroy(p)
    ccall((:sp_revsc_destroy, soundpipe), Cint, (Ptr{Ptr{sp_revsc}},), p)
end

function sp_revsc_init(sp, p)
    ccall((:sp_revsc_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_revsc}), sp, p)
end

function sp_revsc_compute(sp, p, in1, in2, out1, out2)
    ccall((:sp_revsc_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_revsc}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in1, in2, out1, out2)
end

function sp_rms_create(p)
    ccall((:sp_rms_create, soundpipe), Cint, (Ptr{Ptr{sp_rms}},), p)
end

function sp_rms_destroy(p)
    ccall((:sp_rms_destroy, soundpipe), Cint, (Ptr{Ptr{sp_rms}},), p)
end

function sp_rms_init(sp, p)
    ccall((:sp_rms_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rms}), sp, p)
end

function sp_rms_compute(sp, p, in, out)
    ccall((:sp_rms_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rms}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_rpt_create(p)
    ccall((:sp_rpt_create, soundpipe), Cint, (Ptr{Ptr{sp_rpt}},), p)
end

function sp_rpt_destroy(p)
    ccall((:sp_rpt_destroy, soundpipe), Cint, (Ptr{Ptr{sp_rpt}},), p)
end

function sp_rpt_init(sp, p, maxdur)
    ccall((:sp_rpt_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rpt}, Cfloat), sp, p, maxdur)
end

function sp_rpt_compute(sp, p, trig, in, out)
    ccall((:sp_rpt_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rpt}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, in, out)
end

function sp_rspline_create(p)
    ccall((:sp_rspline_create, soundpipe), Cint, (Ptr{Ptr{sp_rspline}},), p)
end

function sp_rspline_destroy(p)
    ccall((:sp_rspline_destroy, soundpipe), Cint, (Ptr{Ptr{sp_rspline}},), p)
end

function sp_rspline_init(sp, p)
    ccall((:sp_rspline_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rspline}), sp, p)
end

function sp_rspline_compute(sp, p, in, out)
    ccall((:sp_rspline_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_rspline}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_saturator_create(p)
    ccall((:sp_saturator_create, soundpipe), Cint, (Ptr{Ptr{sp_saturator}},), p)
end

function sp_saturator_destroy(p)
    ccall((:sp_saturator_destroy, soundpipe), Cint, (Ptr{Ptr{sp_saturator}},), p)
end

function sp_saturator_init(sp, p)
    ccall((:sp_saturator_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_saturator}), sp, p)
end

function sp_saturator_compute(sp, p, in, out)
    ccall((:sp_saturator_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_saturator}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_samphold_create(p)
    ccall((:sp_samphold_create, soundpipe), Cint, (Ptr{Ptr{sp_samphold}},), p)
end

function sp_samphold_destroy(p)
    ccall((:sp_samphold_destroy, soundpipe), Cint, (Ptr{Ptr{sp_samphold}},), p)
end

function sp_samphold_init(sp, p)
    ccall((:sp_samphold_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_samphold}), sp, p)
end

function sp_samphold_compute(sp, p, trig, in, out)
    ccall((:sp_samphold_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_samphold}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, in, out)
end

function sp_scale_create(p)
    ccall((:sp_scale_create, soundpipe), Cint, (Ptr{Ptr{sp_scale}},), p)
end

function sp_scale_destroy(p)
    ccall((:sp_scale_destroy, soundpipe), Cint, (Ptr{Ptr{sp_scale}},), p)
end

function sp_scale_init(sp, p)
    ccall((:sp_scale_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_scale}), sp, p)
end

function sp_scale_compute(sp, p, in, out)
    ccall((:sp_scale_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_scale}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_gen_scrambler(sp, src, dest)
    ccall((:sp_gen_scrambler, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Ptr{Ptr{sp_ftbl}}), sp, src, dest)
end

function sp_sdelay_create(p)
    ccall((:sp_sdelay_create, soundpipe), Cint, (Ptr{Ptr{sp_sdelay}},), p)
end

function sp_sdelay_destroy(p)
    ccall((:sp_sdelay_destroy, soundpipe), Cint, (Ptr{Ptr{sp_sdelay}},), p)
end

function sp_sdelay_init(sp, p, size)
    ccall((:sp_sdelay_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_sdelay}, Cint), sp, p, size)
end

function sp_sdelay_compute(sp, p, in, out)
    ccall((:sp_sdelay_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_sdelay}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_slice_create(p)
    ccall((:sp_slice_create, soundpipe), Cint, (Ptr{Ptr{sp_slice}},), p)
end

function sp_slice_destroy(p)
    ccall((:sp_slice_destroy, soundpipe), Cint, (Ptr{Ptr{sp_slice}},), p)
end

function sp_slice_init(sp, p, vals, buf)
    ccall((:sp_slice_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_slice}, Ptr{sp_ftbl}, Ptr{sp_ftbl}), sp, p, vals, buf)
end

function sp_slice_compute(sp, p, in, out)
    ccall((:sp_slice_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_slice}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_smoothdelay_create(p)
    ccall((:sp_smoothdelay_create, soundpipe), Cint, (Ptr{Ptr{sp_smoothdelay}},), p)
end

function sp_smoothdelay_destroy(p)
    ccall((:sp_smoothdelay_destroy, soundpipe), Cint, (Ptr{Ptr{sp_smoothdelay}},), p)
end

function sp_smoothdelay_init(sp, p, maxdel, interp)
    ccall((:sp_smoothdelay_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_smoothdelay}, Cfloat, UInt32), sp, p, maxdel, interp)
end

function sp_smoothdelay_compute(sp, p, in, out)
    ccall((:sp_smoothdelay_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_smoothdelay}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_spa_create(p)
    ccall((:sp_spa_create, soundpipe), Cint, (Ptr{Ptr{sp_spa}},), p)
end

function sp_spa_destroy(p)
    ccall((:sp_spa_destroy, soundpipe), Cint, (Ptr{Ptr{sp_spa}},), p)
end

function sp_spa_init(sp, p, filename)
    ccall((:sp_spa_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_spa}, Cstring), sp, p, filename)
end

function sp_spa_compute(sp, p, in, out)
    ccall((:sp_spa_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_spa}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_sparec_create(p)
    ccall((:sp_sparec_create, soundpipe), Cint, (Ptr{Ptr{sp_sparec}},), p)
end

function sp_sparec_destroy(p)
    ccall((:sp_sparec_destroy, soundpipe), Cint, (Ptr{Ptr{sp_sparec}},), p)
end

function sp_sparec_init(sp, p, filename)
    ccall((:sp_sparec_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_sparec}, Cstring), sp, p, filename)
end

function sp_sparec_compute(sp, p, in, out)
    ccall((:sp_sparec_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_sparec}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_sparec_close(sp, p)
    ccall((:sp_sparec_close, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_sparec}), sp, p)
end

function sp_streson_create(p)
    ccall((:sp_streson_create, soundpipe), Cint, (Ptr{Ptr{sp_streson}},), p)
end

function sp_streson_destroy(p)
    ccall((:sp_streson_destroy, soundpipe), Cint, (Ptr{Ptr{sp_streson}},), p)
end

function sp_streson_init(sp, p)
    ccall((:sp_streson_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_streson}), sp, p)
end

function sp_streson_compute(sp, p, in, out)
    ccall((:sp_streson_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_streson}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_switch_create(p)
    ccall((:sp_switch_create, soundpipe), Cint, (Ptr{Ptr{sp_switch}},), p)
end

function sp_switch_destroy(p)
    ccall((:sp_switch_destroy, soundpipe), Cint, (Ptr{Ptr{sp_switch}},), p)
end

function sp_switch_init(sp, p)
    ccall((:sp_switch_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_switch}), sp, p)
end

function sp_switch_compute(sp, p, trig, in1, in2, out)
    ccall((:sp_switch_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_switch}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, in1, in2, out)
end

function sp_tabread_create(p)
    ccall((:sp_tabread_create, soundpipe), Cint, (Ptr{Ptr{sp_tabread}},), p)
end

function sp_tabread_destroy(p)
    ccall((:sp_tabread_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tabread}},), p)
end

function sp_tabread_init(sp, p, ft, mode)
    ccall((:sp_tabread_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tabread}, Ptr{sp_ftbl}, Cint), sp, p, ft, mode)
end

function sp_tabread_compute(sp, p, in, out)
    ccall((:sp_tabread_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tabread}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tadsr_create(p)
    ccall((:sp_tadsr_create, soundpipe), Cint, (Ptr{Ptr{sp_tadsr}},), p)
end

function sp_tadsr_destroy(p)
    ccall((:sp_tadsr_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tadsr}},), p)
end

function sp_tadsr_init(sp, p)
    ccall((:sp_tadsr_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tadsr}), sp, p)
end

function sp_tadsr_compute(sp, p, trig, out)
    ccall((:sp_tadsr_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tadsr}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, out)
end

function sp_talkbox_create(p)
    ccall((:sp_talkbox_create, soundpipe), Cint, (Ptr{Ptr{sp_talkbox}},), p)
end

function sp_talkbox_destroy(p)
    ccall((:sp_talkbox_destroy, soundpipe), Cint, (Ptr{Ptr{sp_talkbox}},), p)
end

function sp_talkbox_init(sp, p)
    ccall((:sp_talkbox_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_talkbox}), sp, p)
end

function sp_talkbox_compute(sp, p, src, exc, out)
    ccall((:sp_talkbox_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_talkbox}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, src, exc, out)
end

function sp_tblrec_create(p)
    ccall((:sp_tblrec_create, soundpipe), Cint, (Ptr{Ptr{sp_tblrec}},), p)
end

function sp_tblrec_destroy(p)
    ccall((:sp_tblrec_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tblrec}},), p)
end

function sp_tblrec_init(sp, p, ft)
    ccall((:sp_tblrec_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tblrec}, Ptr{sp_ftbl}), sp, p, ft)
end

function sp_tblrec_compute(sp, p, in, trig, out)
    ccall((:sp_tblrec_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tblrec}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, trig, out)
end

function sp_tbvcf_create(p)
    ccall((:sp_tbvcf_create, soundpipe), Cint, (Ptr{Ptr{sp_tbvcf}},), p)
end

function sp_tbvcf_destroy(p)
    ccall((:sp_tbvcf_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tbvcf}},), p)
end

function sp_tbvcf_init(sp, p)
    ccall((:sp_tbvcf_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tbvcf}), sp, p)
end

function sp_tbvcf_compute(sp, p, in, out)
    ccall((:sp_tbvcf_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tbvcf}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tdiv_create(p)
    ccall((:sp_tdiv_create, soundpipe), Cint, (Ptr{Ptr{sp_tdiv}},), p)
end

function sp_tdiv_destroy(p)
    ccall((:sp_tdiv_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tdiv}},), p)
end

function sp_tdiv_init(sp, p)
    ccall((:sp_tdiv_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tdiv}), sp, p)
end

function sp_tdiv_compute(sp, p, in, out)
    ccall((:sp_tdiv_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tdiv}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tenv_create(p)
    ccall((:sp_tenv_create, soundpipe), Cint, (Ptr{Ptr{sp_tenv}},), p)
end

function sp_tenv_destroy(p)
    ccall((:sp_tenv_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tenv}},), p)
end

function sp_tenv_init(sp, p)
    ccall((:sp_tenv_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenv}), sp, p)
end

function sp_tenv_compute(sp, p, in, out)
    ccall((:sp_tenv_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenv}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tenv2_create(p)
    ccall((:sp_tenv2_create, soundpipe), Cint, (Ptr{Ptr{sp_tenv2}},), p)
end

function sp_tenv2_destroy(p)
    ccall((:sp_tenv2_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tenv2}},), p)
end

function sp_tenv2_init(sp, p)
    ccall((:sp_tenv2_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenv2}), sp, p)
end

function sp_tenv2_compute(sp, p, in, out)
    ccall((:sp_tenv2_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenv2}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tenvx_create(p)
    ccall((:sp_tenvx_create, soundpipe), Cint, (Ptr{Ptr{sp_tenvx}},), p)
end

function sp_tenvx_destroy(p)
    ccall((:sp_tenvx_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tenvx}},), p)
end

function sp_tenvx_init(sp, p)
    ccall((:sp_tenvx_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenvx}), sp, p)
end

function sp_tenvx_compute(sp, p, in, out)
    ccall((:sp_tenvx_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tenvx}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tgate_create(p)
    ccall((:sp_tgate_create, soundpipe), Cint, (Ptr{Ptr{sp_tgate}},), p)
end

function sp_tgate_destroy(p)
    ccall((:sp_tgate_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tgate}},), p)
end

function sp_tgate_init(sp, p)
    ccall((:sp_tgate_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tgate}), sp, p)
end

function sp_tgate_compute(sp, p, in, out)
    ccall((:sp_tgate_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tgate}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_thresh_create(p)
    ccall((:sp_thresh_create, soundpipe), Cint, (Ptr{Ptr{sp_thresh}},), p)
end

function sp_thresh_destroy(p)
    ccall((:sp_thresh_destroy, soundpipe), Cint, (Ptr{Ptr{sp_thresh}},), p)
end

function sp_thresh_init(sp, p)
    ccall((:sp_thresh_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_thresh}), sp, p)
end

function sp_thresh_compute(sp, p, in, out)
    ccall((:sp_thresh_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_thresh}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_timer_create(p)
    ccall((:sp_timer_create, soundpipe), Cint, (Ptr{Ptr{sp_timer}},), p)
end

function sp_timer_destroy(p)
    ccall((:sp_timer_destroy, soundpipe), Cint, (Ptr{Ptr{sp_timer}},), p)
end

function sp_timer_init(sp, p)
    ccall((:sp_timer_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_timer}), sp, p)
end

function sp_timer_compute(sp, p, in, out)
    ccall((:sp_timer_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_timer}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tin_create(p)
    ccall((:sp_tin_create, soundpipe), Cint, (Ptr{Ptr{sp_tin}},), p)
end

function sp_tin_destroy(p)
    ccall((:sp_tin_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tin}},), p)
end

function sp_tin_init(sp, p)
    ccall((:sp_tin_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tin}), sp, p)
end

function sp_tin_compute(sp, p, in, out)
    ccall((:sp_tin_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tin}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tone_create(t)
    ccall((:sp_tone_create, soundpipe), Cint, (Ptr{Ptr{sp_tone}},), t)
end

function sp_tone_destroy(t)
    ccall((:sp_tone_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tone}},), t)
end

function sp_tone_init(sp, t)
    ccall((:sp_tone_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tone}), sp, t)
end

function sp_tone_compute(sp, t, in, out)
    ccall((:sp_tone_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tone}, Ptr{Cfloat}, Ptr{Cfloat}), sp, t, in, out)
end

function sp_trand_create(p)
    ccall((:sp_trand_create, soundpipe), Cint, (Ptr{Ptr{sp_trand}},), p)
end

function sp_trand_destroy(p)
    ccall((:sp_trand_destroy, soundpipe), Cint, (Ptr{Ptr{sp_trand}},), p)
end

function sp_trand_init(sp, p)
    ccall((:sp_trand_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_trand}), sp, p)
end

function sp_trand_compute(sp, p, in, out)
    ccall((:sp_trand_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_trand}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tseg_create(p)
    ccall((:sp_tseg_create, soundpipe), Cint, (Ptr{Ptr{sp_tseg}},), p)
end

function sp_tseg_destroy(p)
    ccall((:sp_tseg_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tseg}},), p)
end

function sp_tseg_init(sp, p, ibeg)
    ccall((:sp_tseg_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tseg}, Cfloat), sp, p, ibeg)
end

function sp_tseg_compute(sp, p, in, out)
    ccall((:sp_tseg_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tseg}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_tseq_create(p)
    ccall((:sp_tseq_create, soundpipe), Cint, (Ptr{Ptr{sp_tseq}},), p)
end

function sp_tseq_destroy(p)
    ccall((:sp_tseq_destroy, soundpipe), Cint, (Ptr{Ptr{sp_tseq}},), p)
end

function sp_tseq_init(sp, p, ft)
    ccall((:sp_tseq_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tseq}, Ptr{sp_ftbl}), sp, p, ft)
end

function sp_tseq_compute(sp, p, trig, val)
    ccall((:sp_tseq_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_tseq}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, trig, val)
end

function sp_vdelay_create(p)
    ccall((:sp_vdelay_create, soundpipe), Cint, (Ptr{Ptr{sp_vdelay}},), p)
end

function sp_vdelay_destroy(p)
    ccall((:sp_vdelay_destroy, soundpipe), Cint, (Ptr{Ptr{sp_vdelay}},), p)
end

function sp_vdelay_init(sp, p, maxdel)
    ccall((:sp_vdelay_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_vdelay}, Cfloat), sp, p, maxdel)
end

function sp_vdelay_compute(sp, p, in, out)
    ccall((:sp_vdelay_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_vdelay}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_vdelay_reset(sp, p)
    ccall((:sp_vdelay_reset, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_vdelay}), sp, p)
end

function sp_voc_create(voc)
    ccall((:sp_voc_create, soundpipe), Cint, (Ptr{Ptr{sp_voc}},), voc)
end

function sp_voc_destroy(voc)
    ccall((:sp_voc_destroy, soundpipe), Cint, (Ptr{Ptr{sp_voc}},), voc)
end

function sp_voc_init(sp, voc)
    ccall((:sp_voc_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_voc}), sp, voc)
end

function sp_voc_compute(sp, voc, out)
    ccall((:sp_voc_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_voc}, Ptr{Cfloat}), sp, voc, out)
end

function sp_voc_tract_compute(sp, voc, in, out)
    ccall((:sp_voc_tract_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_voc}, Ptr{Cfloat}, Ptr{Cfloat}), sp, voc, in, out)
end

function sp_voc_set_frequency(voc, freq)
    ccall((:sp_voc_set_frequency, soundpipe), Cvoid, (Ptr{sp_voc}, Cfloat), voc, freq)
end

function sp_voc_get_frequency_ptr(voc)
    ccall((:sp_voc_get_frequency_ptr, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_get_tract_diameters(voc)
    ccall((:sp_voc_get_tract_diameters, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_get_current_tract_diameters(voc)
    ccall((:sp_voc_get_current_tract_diameters, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_get_tract_size(voc)
    ccall((:sp_voc_get_tract_size, soundpipe), Cint, (Ptr{sp_voc},), voc)
end

function sp_voc_get_nose_diameters(voc)
    ccall((:sp_voc_get_nose_diameters, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_get_nose_size(voc)
    ccall((:sp_voc_get_nose_size, soundpipe), Cint, (Ptr{sp_voc},), voc)
end

function sp_voc_set_tongue_shape(voc, tongue_index, tongue_diameter)
    ccall((:sp_voc_set_tongue_shape, soundpipe), Cvoid, (Ptr{sp_voc}, Cfloat, Cfloat), voc, tongue_index, tongue_diameter)
end

function sp_voc_set_tenseness(voc, breathiness)
    ccall((:sp_voc_set_tenseness, soundpipe), Cvoid, (Ptr{sp_voc}, Cfloat), voc, breathiness)
end

function sp_voc_get_tenseness_ptr(voc)
    ccall((:sp_voc_get_tenseness_ptr, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_set_velum(voc, velum)
    ccall((:sp_voc_set_velum, soundpipe), Cvoid, (Ptr{sp_voc}, Cfloat), voc, velum)
end

function sp_voc_get_velum_ptr(voc)
    ccall((:sp_voc_get_velum_ptr, soundpipe), Ptr{Cfloat}, (Ptr{sp_voc},), voc)
end

function sp_voc_set_diameters(voc, blade_start, lip_start, tip_start, tongue_index, tongue_diameter, diameters)
    ccall((:sp_voc_set_diameters, soundpipe), Cvoid, (Ptr{sp_voc}, Cint, Cint, Cint, Cfloat, Cfloat, Ptr{Cfloat}), voc, blade_start, lip_start, tip_start, tongue_index, tongue_diameter, diameters)
end

function sp_voc_get_counter(voc)
    ccall((:sp_voc_get_counter, soundpipe), Cint, (Ptr{sp_voc},), voc)
end

function sp_vocoder_create(p)
    ccall((:sp_vocoder_create, soundpipe), Cint, (Ptr{Ptr{sp_vocoder}},), p)
end

function sp_vocoder_destroy(p)
    ccall((:sp_vocoder_destroy, soundpipe), Cint, (Ptr{Ptr{sp_vocoder}},), p)
end

function sp_vocoder_init(sp, p)
    ccall((:sp_vocoder_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_vocoder}), sp, p)
end

function sp_vocoder_compute(sp, p, source, excite, out)
    ccall((:sp_vocoder_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_vocoder}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, source, excite, out)
end

function sp_waveset_create(p)
    ccall((:sp_waveset_create, soundpipe), Cint, (Ptr{Ptr{sp_waveset}},), p)
end

function sp_waveset_destroy(p)
    ccall((:sp_waveset_destroy, soundpipe), Cint, (Ptr{Ptr{sp_waveset}},), p)
end

function sp_waveset_init(sp, p, ilen)
    ccall((:sp_waveset_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_waveset}, Cfloat), sp, p, ilen)
end

function sp_waveset_compute(sp, p, in, out)
    ccall((:sp_waveset_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_waveset}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_wavin_create(p)
    ccall((:sp_wavin_create, soundpipe), Cint, (Ptr{Ptr{sp_wavin}},), p)
end

function sp_wavin_destroy(p)
    ccall((:sp_wavin_destroy, soundpipe), Cint, (Ptr{Ptr{sp_wavin}},), p)
end

function sp_wavin_init(sp, p, filename)
    ccall((:sp_wavin_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wavin}, Cstring), sp, p, filename)
end

function sp_wavin_compute(sp, p, in, out)
    ccall((:sp_wavin_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wavin}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_wavout_create(p)
    ccall((:sp_wavout_create, soundpipe), Cint, (Ptr{Ptr{sp_wavout}},), p)
end

function sp_wavout_destroy(p)
    ccall((:sp_wavout_destroy, soundpipe), Cint, (Ptr{Ptr{sp_wavout}},), p)
end

function sp_wavout_init(sp, p, filename)
    ccall((:sp_wavout_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wavout}, Cstring), sp, p, filename)
end

function sp_wavout_compute(sp, p, in, out)
    ccall((:sp_wavout_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wavout}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_wpkorg35_create(p)
    ccall((:sp_wpkorg35_create, soundpipe), Cint, (Ptr{Ptr{sp_wpkorg35}},), p)
end

function sp_wpkorg35_destroy(p)
    ccall((:sp_wpkorg35_destroy, soundpipe), Cint, (Ptr{Ptr{sp_wpkorg35}},), p)
end

function sp_wpkorg35_init(sp, p)
    ccall((:sp_wpkorg35_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wpkorg35}), sp, p)
end

function sp_wpkorg35_compute(sp, p, in, out)
    ccall((:sp_wpkorg35_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_wpkorg35}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function sp_zitarev_create(p)
    ccall((:sp_zitarev_create, soundpipe), Cint, (Ptr{Ptr{sp_zitarev}},), p)
end

function sp_zitarev_destroy(p)
    ccall((:sp_zitarev_destroy, soundpipe), Cint, (Ptr{Ptr{sp_zitarev}},), p)
end

function sp_zitarev_init(sp, p)
    ccall((:sp_zitarev_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_zitarev}), sp, p)
end

function sp_zitarev_compute(sp, p, in1, in2, out1, out2)
    ccall((:sp_zitarev_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_zitarev}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in1, in2, out1, out2)
end

function sp_diskin_create(p)
    ccall((:sp_diskin_create, soundpipe), Cint, (Ptr{Ptr{sp_diskin}},), p)
end

function sp_diskin_destroy(p)
    ccall((:sp_diskin_destroy, soundpipe), Cint, (Ptr{Ptr{sp_diskin}},), p)
end

function sp_diskin_init(sp, p, filename)
    ccall((:sp_diskin_init, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_diskin}, Cstring), sp, p, filename)
end

function sp_diskin_compute(sp, p, in, out)
    ccall((:sp_diskin_compute, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_diskin}, Ptr{Cfloat}, Ptr{Cfloat}), sp, p, in, out)
end

function FFTwrapper_create(fw, fftsize)
    ccall((:FFTwrapper_create, soundpipe), Cvoid, (Ptr{Ptr{FFTwrapper}}, Cint), fw, fftsize)
end

function FFTwrapper_destroy(fw)
    ccall((:FFTwrapper_destroy, soundpipe), Cvoid, (Ptr{Ptr{FFTwrapper}},), fw)
end

function newFFTFREQS(f, size)
    ccall((:newFFTFREQS, soundpipe), Cvoid, (Ptr{FFTFREQS}, Cint), f, size)
end

function deleteFFTFREQS(f)
    ccall((:deleteFFTFREQS, soundpipe), Cvoid, (Ptr{FFTFREQS},), f)
end

function smps2freqs(ft, smps, freqs)
    ccall((:smps2freqs, soundpipe), Cvoid, (Ptr{FFTwrapper}, Ptr{Cfloat}, Ptr{FFTFREQS}), ft, smps, freqs)
end

function freqs2smps(ft, freqs, smps)
    ccall((:freqs2smps, soundpipe), Cvoid, (Ptr{FFTwrapper}, Ptr{FFTFREQS}, Ptr{Cfloat}), ft, freqs, smps)
end

function sp_gen_padsynth(sp, ps, amps, f, bw)
    ccall((:sp_gen_padsynth, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_ftbl}, Ptr{sp_ftbl}, Cfloat, Cfloat), sp, ps, amps, f, bw)
end

function sp_padsynth_profile(fi, bwi)
    ccall((:sp_padsynth_profile, soundpipe), Cfloat, (Cfloat, Cfloat), fi, bwi)
end

function sp_padsynth_ifft(N, freq_amp, freq_phase, smp)
    ccall((:sp_padsynth_ifft, soundpipe), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), N, freq_amp, freq_phase, smp)
end

function sp_padsynth_normalize(N, smp)
    ccall((:sp_padsynth_normalize, soundpipe), Cint, (Cint, Ptr{Cfloat}), N, smp)
end

function spa_open(sp, spa, name, mode)
    ccall((:spa_open, soundpipe), Cint, (Ptr{sp_data}, Ptr{sp_audio}, Cstring, Cint), sp, spa, name, mode)
end

function spa_write_buf()
    ccall((:spa_write_buf, soundpipe), Cint, ())
end

function spa_read_buf()
    ccall((:spa_read_buf, soundpipe), Cint, ())
end

function spa_close(spa)
    ccall((:spa_close, soundpipe), Cint, (Ptr{sp_audio},), spa)
end
