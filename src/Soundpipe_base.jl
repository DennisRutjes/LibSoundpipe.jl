# Automatically generated using Clang.jl


const OPENLPC_FRAMESIZE_1_8 = 250
const OPENLPC_FRAMESIZE_1_4 = 320
const OPENLPC_ENCODED_FRAME_SIZE = 7
const openlpc_e_state = Cvoid
const openlpc_encoder_state = openlpc_e_state
const openlpc_d_state = Cvoid
const openlpc_decoder_state = openlpc_d_state
const SP_BUFSIZE = 4096
const SP_OK = 1
const SP_NOT_OK = 0
const SP_RANDMAX = 2147483648
const kiss_fft_scalar = Float32
const SP_FT_MAXLEN = Int32(0x01000000)
const SP_FT_PHMASK = Int32(0x00ffffff)
const SP_TALKBOX_BUFMAX = 1600
const sp_frame = Culong

struct sp_auxdata
    size::Cint
    ptr::Ptr{Cvoid}
end

struct sp_data
    out::Ptr{Cfloat}
    sr::Cint
    nchan::Cint
    len::Culong
    pos::Culong
    filename::NTuple{200, UInt8}
    rand::UInt32
end

struct sp_param
    state::UInt8
    val::Cfloat
end

struct sp_fft
    utbl::Ptr{Cfloat}
    BRLow::Ptr{Int16}
    BRLowCpx::Ptr{Int16}
end

struct kiss_fft_cpx
    r::Cfloat
    i::Cfloat
end

const kiss_fft_state = Cvoid
const kiss_fft_cfg = Ptr{kiss_fft_state}
const kiss_fftr_state = Cvoid
const kiss_fftr_cfg = Ptr{kiss_fftr_state}

struct spa_header
    magic::UInt8
    nchan::UInt8
    sr::UInt16
    len::UInt32
end

struct sp_audio
    header::spa_header
    offset::Cint
    mode::Cint
    fp::Ptr{Cint}
    pos::UInt32
end

struct sp_ftbl
    size::Cint
    lobits::UInt32
    lomask::UInt32
    lodiv::Cfloat
    sicvt::Cfloat
    tbl::Ptr{Cfloat}
    del::UInt8
end

struct sp_tevent
    reinit::Ptr{Cvoid}
    compute::Ptr{Cvoid}
    ud::Ptr{Cvoid}
    started::Cint
end

struct sp_adsr
    atk::Cfloat
    dec::Cfloat
    sus::Cfloat
    rel::Cfloat
    timer::UInt32
    atk_time::UInt32
    a::Cfloat
    b::Cfloat
    y::Cfloat
    x::Cfloat
    prev::Cfloat
    mode::Cint
end

struct sp_allpass
    revtime::Cfloat
    looptime::Cfloat
    coef::Cfloat
    prvt::Cfloat
    aux::sp_auxdata
    bufpos::UInt32
    bufsize::UInt32
end

struct sp_atone
    hp::Cfloat
    c1::Cfloat
    c2::Cfloat
    yt1::Cfloat
    prvhp::Cfloat
    tpidsr::Cfloat
end

struct sp_autowah
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{3, Ptr{Cfloat}}
    level::Ptr{Cfloat}
    wah::Ptr{Cfloat}
    mix::Ptr{Cfloat}
end

struct sp_bal
    asig::Cfloat
    csig::Cfloat
    ihp::Cfloat
    c1::Cfloat
    c2::Cfloat
    prvq::Cfloat
    prvr::Cfloat
    prva::Cfloat
end

struct sp_bar
    bcL::Cfloat
    bcR::Cfloat
    iK::Cfloat
    ib::Cfloat
    scan::Cfloat
    T30::Cfloat
    pos::Cfloat
    vel::Cfloat
    wid::Cfloat
    w::Ptr{Cfloat}
    w1::Ptr{Cfloat}
    w2::Ptr{Cfloat}
    step::Cint
    first::Cint
    s0::Cfloat
    s1::Cfloat
    s2::Cfloat
    t0::Cfloat
    t1::Cfloat
    i_bcL::Cint
    i_bcR::Cint
    N::Cint
    w_aux::sp_auxdata
end

struct sp_biquad
    b0::Cfloat
    b1::Cfloat
    b2::Cfloat
    a0::Cfloat
    a1::Cfloat
    a2::Cfloat
    reinit::Cfloat
    xnm1::Cfloat
    xnm2::Cfloat
    ynm1::Cfloat
    ynm2::Cfloat
    cutoff::Cfloat
    res::Cfloat
    sr::Cfloat
    tpidsr::Cfloat
end

struct sp_biscale
    min::Cfloat
    max::Cfloat
end

struct sp_blsaw
    ud::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{2, Ptr{Cfloat}}
    freq::Ptr{Cfloat}
    amp::Ptr{Cfloat}
end

struct sp_blsquare
    ud::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{3, Ptr{Cfloat}}
    freq::Ptr{Cfloat}
    amp::Ptr{Cfloat}
    width::Ptr{Cfloat}
end

struct sp_bltriangle
    ud::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{2, Ptr{Cfloat}}
    freq::Ptr{Cfloat}
    amp::Ptr{Cfloat}
end

struct sp_fold
    incr::Cfloat
    index::Cfloat
    sample_index::Int32
    value::Cfloat
end

struct sp_bitcrush
    bitdepth::Cfloat
    srate::Cfloat
    fold::Ptr{sp_fold}
end

struct sp_brown
    brown::Cfloat
end

struct sp_butbp
    sr::Cfloat
    freq::Cfloat
    bw::Cfloat
    istor::Cfloat
    lkf::Cfloat
    lkb::Cfloat
    a::NTuple{8, Cfloat}
    pidsr::Cfloat
    tpidsr::Cfloat
end

struct sp_butbr
    sr::Cfloat
    freq::Cfloat
    bw::Cfloat
    istor::Cfloat
    lkf::Cfloat
    lkb::Cfloat
    a::NTuple{8, Cfloat}
    pidsr::Cfloat
    tpidsr::Cfloat
end

struct sp_buthp
    sr::Cfloat
    freq::Cfloat
    istor::Cfloat
    lkf::Cfloat
    a::NTuple{8, Cfloat}
    pidsr::Cfloat
end

struct sp_butlp
    sr::Cfloat
    freq::Cfloat
    istor::Cfloat
    lkf::Cfloat
    a::NTuple{8, Cfloat}
    pidsr::Cfloat
end

struct sp_clip
    lim::Cfloat
    k1::Cfloat
end

struct sp_clock
    bpm::Cfloat
    subdiv::Cfloat
    counter::UInt32
end

struct sp_comb
    revtime::Cfloat
    looptime::Cfloat
    coef::Cfloat
    prvt::Cfloat
    aux::sp_auxdata
    bufpos::UInt32
    bufsize::UInt32
end

struct sp_compressor
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{4, Ptr{Cfloat}}
    ratio::Ptr{Cfloat}
    thresh::Ptr{Cfloat}
    atk::Ptr{Cfloat}
    rel::Ptr{Cfloat}
end

struct sp_count
    count::Int32
    curcount::Int32
    mode::Cint
end

struct sp_conv
    aOut::NTuple{1, Cfloat}
    aIn::Cfloat
    iPartLen::Cfloat
    iSkipSamples::Cfloat
    iTotLen::Cfloat
    initDone::Cint
    nChannels::Cint
    cnt::Cint
    nPartitions::Cint
    partSize::Cint
    rbCnt::Cint
    tmpBuf::Ptr{Cfloat}
    ringBuf::Ptr{Cfloat}
    IR_Data::NTuple{1, Ptr{Cfloat}}
    outBuffers::NTuple{1, Ptr{Cfloat}}
    auxData::sp_auxdata
    ftbl::Ptr{sp_ftbl}
    fft::sp_fft
end

struct sp_crossfade
    pos::Cfloat
end

struct sp_dcblock
    gg::Cfloat
    outputs::Cfloat
    inputs::Cfloat
    gain::Cfloat
end

struct sp_delay
    time::Cfloat
    feedback::Cfloat
    last::Cfloat
    buf::sp_auxdata
    bufsize::UInt32
    bufpos::UInt32
end

struct sp_diode
    opva_alpha::NTuple{4, Cfloat}
    opva_beta::NTuple{4, Cfloat}
    opva_gamma::NTuple{4, Cfloat}
    opva_delta::NTuple{4, Cfloat}
    opva_eps::NTuple{4, Cfloat}
    opva_a0::NTuple{4, Cfloat}
    opva_fdbk::NTuple{4, Cfloat}
    opva_z1::NTuple{4, Cfloat}
    SG::NTuple{4, Cfloat}
    gamma::Cfloat
    freq::Cfloat
    K::Cfloat
    res::Cfloat
end

struct sp_dist
    pregain::Cfloat
    postgain::Cfloat
    shape1::Cfloat
    shape2::Cfloat
    mode::Cfloat
end

struct sp_dmetro
    time::Cfloat
    counter::UInt32
end

struct sp_drip
    amp::Cfloat
    dettack::Cfloat
    num_tubes::Cfloat
    damp::Cfloat
    shake_max::Cfloat
    freq::Cfloat
    freq1::Cfloat
    freq2::Cfloat
    num_objectsSave::Cfloat
    shake_maxSave::Cfloat
    shakeEnergy::Cfloat
    outputs00::Cfloat
    outputs01::Cfloat
    outputs10::Cfloat
    outputs11::Cfloat
    outputs20::Cfloat
    outputs21::Cfloat
    coeffs00::Cfloat
    coeffs01::Cfloat
    coeffs10::Cfloat
    coeffs11::Cfloat
    coeffs20::Cfloat
    coeffs21::Cfloat
    finalZ0::Cfloat
    finalZ1::Cfloat
    finalZ2::Cfloat
    sndLevel::Cfloat
    gains0::Cfloat
    gains1::Cfloat
    gains2::Cfloat
    center_freqs0::Cfloat
    center_freqs1::Cfloat
    center_freqs2::Cfloat
    soundDecay::Cfloat
    systemDecay::Cfloat
    num_objects::Cfloat
    totalEnergy::Cfloat
    decayScale::Cfloat
    res_freq0::Cfloat
    res_freq1::Cfloat
    res_freq2::Cfloat
    shake_damp::Cfloat
    kloop::Cint
end

struct sp_dtrig
    ft::Ptr{sp_ftbl}
    counter::UInt32
    pos::UInt32
    running::Cint
    loop::Cint
    delay::Cfloat
    scale::Cfloat
end

struct sp_dust
    amp::Cfloat
    density::Cfloat
    density0::Cfloat
    thresh::Cfloat
    scale::Cfloat
    onedsr::Cfloat
    bipolar::Cint
    rand::UInt32
end

struct sp_eqfil
    freq::Cfloat
    bw::Cfloat
    gain::Cfloat
    z1::Cfloat
    z2::Cfloat
    sr::Cfloat
    frv::Cfloat
    bwv::Cfloat
    c::Cfloat
    d::Cfloat
end

struct sp_expon
    a::Cfloat
    dur::Cfloat
    b::Cfloat
    val::Cfloat
    incr::Cfloat
    sdur::UInt32
    stime::UInt32
    init::Cint
end

struct sp_fof_overlap
    nxtact::Ptr{sp_fof_overlap}
    nxtfree::Ptr{sp_fof_overlap}
    timrem::Int32
    dectim::Int32
    formphs::Int32
    forminc::Int32
    risphs::Int32
    risinc::Int32
    decphs::Int32
    decinc::Int32
    curamp::Cfloat
    expamp::Cfloat
    glissbas::Cfloat
    sampct::Int32
end

struct sp_fof
    amp::Cfloat
    fund::Cfloat
    form::Cfloat
    oct::Cfloat
    band::Cfloat
    ris::Cfloat
    dur::Cfloat
    dec::Cfloat
    iolaps::Cfloat
    iphs::Cfloat
    durtogo::Int32
    fundphs::Int32
    fofcount::Int32
    prvsmps::Int32
    prvband::Cfloat
    expamp::Cfloat
    preamp::Cfloat
    foftype::Int16
    xincod::Int16
    ampcod::Int16
    fundcod::Int16
    formcod::Int16
    fmtmod::Int16
    auxch::sp_auxdata
    ftp1::Ptr{sp_ftbl}
    ftp2::Ptr{sp_ftbl}
    basovrlap::sp_fof_overlap
end

struct sp_fog_overlap
    nxtact::Ptr{sp_fog_overlap}
    nxtfree::Ptr{sp_fog_overlap}
    timrem::Int32
    dectim::Int32
    formphs::Int32
    forminc::Int32
    risphs::UInt32
    risinc::Int32
    decphs::Int32
    decinc::Int32
    curamp::Cfloat
    expamp::Cfloat
    pos::Cfloat
    inc::Cfloat
end

struct sp_fog
    amp::Cfloat
    dens::Cfloat
    trans::Cfloat
    spd::Cfloat
    oct::Cfloat
    band::Cfloat
    ris::Cfloat
    dur::Cfloat
    dec::Cfloat
    iolaps::Cfloat
    iphs::Cfloat
    itmode::Cfloat
    basovrlap::sp_fog_overlap
    durtogo::Int32
    fundphs::Int32
    fofcount::Int32
    prvsmps::Int32
    spdphs::Int32
    prvband::Cfloat
    expamp::Cfloat
    preamp::Cfloat
    fogcvt::Cfloat
    formcod::Int16
    fmtmod::Int16
    speedcod::Int16
    auxch::sp_auxdata
    ftp1::Ptr{sp_ftbl}
    ftp2::Ptr{sp_ftbl}
end

struct sp_fofilt
    freq::Cfloat
    atk::Cfloat
    dec::Cfloat
    istor::Cfloat
    tpidsr::Cfloat
    sr::Cfloat
    delay::NTuple{4, Cfloat}
end

struct sp_foo
    bar::Cfloat
end

struct sp_fosc
    amp::Cfloat
    freq::Cfloat
    car::Cfloat
    mod::Cfloat
    indx::Cfloat
    iphs::Cfloat
    mphs::Int32
    cphs::Int32
    ft::Ptr{sp_ftbl}
end

struct sp_gbuzz
    amp::Cfloat
    freq::Cfloat
    nharm::Cfloat
    lharm::Cfloat
    mul::Cfloat
    iphs::Cfloat
    ampcod::Int16
    cpscod::Int16
    prvn::Int16
    prvr::Cfloat
    twor::Cfloat
    rsqp1::Cfloat
    rtn::Cfloat
    rtnp1::Cfloat
    rsumr::Cfloat
    lphs::Int32
    reported::Cint
    last::Cfloat
    ft::Ptr{sp_ftbl}
end

struct sp_hilbert
    xnm1::NTuple{12, Cfloat}
    ynm1::NTuple{12, Cfloat}
    coef::NTuple{12, Cfloat}
end

struct sp_in
    fp::Ptr{Cint}
end

struct sp_incr
    step::Cfloat
    min::Cfloat
    max::Cfloat
    val::Cfloat
end

struct sp_jcrev
    ud::Ptr{Cvoid}
end

struct sp_jitter
    amp::Cfloat
    cpsMin::Cfloat
    cpsMax::Cfloat
    cps::Cfloat
    phs::Int32
    initflag::Cint
    num1::Cfloat
    num2::Cfloat
    dfdmax::Cfloat
end

struct sp_line
    a::Cfloat
    dur::Cfloat
    b::Cfloat
    val::Cfloat
    incr::Cfloat
    sdur::UInt32
    stime::UInt32
    init::Cint
end

struct sp_lpc
    e::Ptr{openlpc_e_state}
    d::Ptr{openlpc_d_state}
    counter::Cint
    in::Ptr{Int16}
    out::Ptr{Int16}
    data::NTuple{7, Cuchar}
    y::NTuple{7, Cfloat}
    smooth::Cfloat
    samp::Cfloat
    clock::UInt32
    block::UInt32
    framesize::Cint
    m_in::sp_auxdata
    m_out::sp_auxdata
    m_e::sp_auxdata
    m_d::sp_auxdata
    mode::Cint
    ft::Ptr{sp_ftbl}
end

struct sp_lpf18
    cutoff::Cfloat
    res::Cfloat
    dist::Cfloat
    ay1::Cfloat
    ay2::Cfloat
    aout::Cfloat
    lastin::Cfloat
    onedsr::Cfloat
end

struct sp_maygate
    prob::Cfloat
    gate::Cfloat
    mode::Cint
end

struct sp_metro
    sr::Cfloat
    freq::Cfloat
    iphs::Cfloat
    curphs::Cfloat
    flag::Cint
    onedsr::Cfloat
end

struct sp_mincer
    time::Cfloat
    amp::Cfloat
    pitch::Cfloat
    lock::Cfloat
    iN::Cfloat
    idecim::Cfloat
    onset::Cfloat
    offset::Cfloat
    dbthresh::Cfloat
    cnt::Cint
    hsize::Cint
    curframe::Cint
    N::Cint
    decim::Cint
    tscale::Cint
    pos::Cfloat
    accum::Cfloat
    outframe::sp_auxdata
    win::sp_auxdata
    bwin::sp_auxdata
    fwin::sp_auxdata
    nwin::sp_auxdata
    prev::sp_auxdata
    framecount::sp_auxdata
    indata::NTuple{2, sp_auxdata}
    tab::Ptr{Cfloat}
    curbuf::Cint
    resamp::Cfloat
    ft::Ptr{sp_ftbl}
    fft::sp_fft
end

struct sp_mode
    freq::Cfloat
    q::Cfloat
    xnm1::Cfloat
    ynm1::Cfloat
    ynm2::Cfloat
    a0::Cfloat
    a1::Cfloat
    a2::Cfloat
    d::Cfloat
    lfq::Cfloat
    lq::Cfloat
    sr::Cfloat
end

struct sp_moogladder
    freq::Cfloat
    res::Cfloat
    istor::Cfloat
    delay::NTuple{6, Cfloat}
    tanhstg::NTuple{3, Cfloat}
    oldfreq::Cfloat
    oldres::Cfloat
    oldacr::Cfloat
    oldtune::Cfloat
end

struct sp_noise
    amp::Cfloat
end

struct nano_entry
    name::NTuple{50, UInt8}
    pos::UInt32
    size::UInt32
    speed::Cfloat
    next::Ptr{nano_entry}
end

struct nano_dict
    nval::Cint
    init::Cint
    root::nano_entry
    last::Ptr{nano_entry}
end

struct nanosamp
    ini::NTuple{100, UInt8}
    curpos::Cfloat
    dict::nano_dict
    selected::Cint
    sample::Ptr{nano_entry}
    index::Ptr{Ptr{nano_entry}}
    ft::Ptr{sp_ftbl}
    sr::Cint
end

struct sp_nsmp
    smp::Ptr{nanosamp}
    index::UInt32
    triggered::Cint
end

struct sp_osc
    freq::Cfloat
    amp::Cfloat
    iphs::Cfloat
    lphs::Int32
    tbl::Ptr{sp_ftbl}
    inc::Cint
end

struct sp_oscmorph
    freq::Cfloat
    amp::Cfloat
    iphs::Cfloat
    lphs::Int32
    tbl::Ptr{Ptr{sp_ftbl}}
    inc::Cint
    wtpos::Cfloat
    nft::Cint
end

struct sp_pan2
    pan::Cfloat
    type::UInt32
end

struct sp_panst
    pan::Cfloat
    type::UInt32
end

struct sp_pareq
    fc::Cfloat
    v::Cfloat
    q::Cfloat
    mode::Cfloat
    xnm1::Cfloat
    xnm2::Cfloat
    ynm1::Cfloat
    ynm2::Cfloat
    prv_fc::Cfloat
    prv_v::Cfloat
    prv_q::Cfloat
    b0::Cfloat
    b1::Cfloat
    b2::Cfloat
    a1::Cfloat
    a2::Cfloat
    tpidsr::Cfloat
    imode::Cint
end

struct sp_paulstretch
    windowsize::UInt32
    half_windowsize::UInt32
    stretch::Cfloat
    start_pos::Cfloat
    displace_pos::Cfloat
    window::Ptr{Cfloat}
    old_windowed_buf::Ptr{Cfloat}
    hinv_buf::Ptr{Cfloat}
    buf::Ptr{Cfloat}
    output::Ptr{Cfloat}
    ft::Ptr{sp_ftbl}
    fft::kiss_fftr_cfg
    ifft::kiss_fftr_cfg
    tmp1::Ptr{kiss_fft_cpx}
    tmp2::Ptr{kiss_fft_cpx}
    counter::UInt32
    m_window::sp_auxdata
    m_old_windowed_buf::sp_auxdata
    m_hinv_buf::sp_auxdata
    m_buf::sp_auxdata
    m_output::sp_auxdata
    wrap::Cuchar
end

struct sp_pdhalf
    amount::Cfloat
    ibipolar::Cfloat
    ifullscale::Cfloat
end

struct sp_peaklim
    atk::Cfloat
    rel::Cfloat
    thresh::Cfloat
    patk::Cfloat
    prel::Cfloat
    b0_r::Cfloat
    a1_r::Cfloat
    b0_a::Cfloat
    a1_a::Cfloat
    level::Cfloat
end

struct sp_phaser
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{10, Ptr{Cfloat}}
    MaxNotch1Freq::Ptr{Cfloat}
    MinNotch1Freq::Ptr{Cfloat}
    Notch_width::Ptr{Cfloat}
    NotchFreq::Ptr{Cfloat}
    VibratoMode::Ptr{Cfloat}
    depth::Ptr{Cfloat}
    feedback_gain::Ptr{Cfloat}
    invert::Ptr{Cfloat}
    level::Ptr{Cfloat}
    lfobpm::Ptr{Cfloat}
end

struct sp_phasor
    freq::Cfloat
    phs::Cfloat
    curphs::Cfloat
    onedsr::Cfloat
end

struct sp_pinknoise
    amp::Cfloat
    newrand::UInt32
    prevrand::UInt32
    k::UInt32
    seed::UInt32
    total::UInt32
    counter::UInt32
    dice::NTuple{7, UInt32}
end

struct sp_pitchamdf
    imincps::Cfloat
    imaxcps::Cfloat
    icps::Cfloat
    imedi::Cfloat
    idowns::Cfloat
    iexcps::Cfloat
    irmsmedi::Cfloat
    srate::Cfloat
    lastval::Cfloat
    downsamp::Int32
    upsamp::Int32
    minperi::Int32
    maxperi::Int32
    index::Int32
    readp::Int32
    size::Int32
    peri::Int32
    medisize::Int32
    mediptr::Int32
    rmsmedisize::Int32
    rmsmediptr::Int32
    inerr::Cint
    median::sp_auxdata
    rmsmedian::sp_auxdata
    buffer::sp_auxdata
end

struct sp_pluck
    amp::Cfloat
    freq::Cfloat
    ifreq::Cfloat
    sicps::Cfloat
    phs256::Int32
    npts::Int32
    maxpts::Int32
    auxch::sp_auxdata
    init::UInt8
end

struct sp_port
    htime::Cfloat
    c1::Cfloat
    c2::Cfloat
    yt1::Cfloat
    prvhtim::Cfloat
    sr::Cfloat
    onedsr::Cfloat
end

struct sp_posc3
    freq::Cfloat
    amp::Cfloat
    iphs::Cfloat
    tbl::Ptr{sp_ftbl}
    tablen::Int32
    tablenUPsr::Cfloat
    phs::Cfloat
    onedsr::Cfloat
end

struct sp_progress
    nbars::Cint
    skip::Cint
    counter::Cint
    len::UInt32
end

struct prop_event
    type::UInt8
    pos::UInt32
    val::UInt32
    cons::UInt32
end

struct prop_val
    type::UInt8
    ud::Ptr{Cvoid}
end

struct prop_entry
    val::prop_val
    next::Ptr{prop_entry}
end

struct prop_list
    root::prop_entry
    last::Ptr{prop_entry}
    size::UInt32
    pos::UInt32
    top::Ptr{prop_list}
    lvl::UInt32
end

struct prop_stack
    stack::NTuple{16, UInt32}
    pos::Cint
end

struct prop_data
    mul::UInt32
    div::UInt32
    tmp::UInt32
    cons_mul::UInt32
    cons_div::UInt32
    scale::Cfloat
    mode::Cint
    pos::UInt32
    top::prop_list
    main::Ptr{prop_list}
    mstack::prop_stack
    cstack::prop_stack
end

struct sp_prop
    prp::Ptr{prop_data}
    evt::prop_event
    count::UInt32
    bpm::Cfloat
    lbpm::Cfloat
end

struct sp_pshift
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{3, Ptr{Cfloat}}
    shift::Ptr{Cfloat}
    window::Ptr{Cfloat}
    xfade::Ptr{Cfloat}
end

struct sp_ptrack
    freq::Cfloat
    amp::Cfloat
    asig::Cfloat
    size::Cfloat
    peak::Cfloat
    signal::sp_auxdata
    prev::sp_auxdata
    sin::sp_auxdata
    spec1::sp_auxdata
    spec2::sp_auxdata
    peakarray::sp_auxdata
    numpks::Cint
    cnt::Cint
    histcnt::Cint
    hopsize::Cint
    sr::Cfloat
    cps::Cfloat
    dbs::NTuple{20, Cfloat}
    amplo::Cfloat
    amphi::Cfloat
    npartial::Cfloat
    dbfs::Cfloat
    prevf::Cfloat
    fft::sp_fft
end

struct sp_randh
    freq::Cfloat
    min::Cfloat
    max::Cfloat
    val::Cfloat
    counter::UInt32
    dur::UInt32
end

struct sp_randi
    min::Cfloat
    max::Cfloat
    cps::Cfloat
    mode::Cfloat
    fstval::Cfloat
    cpscod::Int16
    phs::Int32
    num1::Cfloat
    num2::Cfloat
    dfdmax::Cfloat
    holdrand::Cint
    sicvt::Cfloat
end

struct sp_randmt
    mti::Cint
    mt::NTuple{624, UInt32}
end

struct sp_random
    min::Cfloat
    max::Cfloat
end

struct sp_reverse
    delay::Cfloat
    bufpos::UInt32
    bufsize::UInt32
    buf::sp_auxdata
end

struct sp_reson
    freq::Cfloat
    bw::Cfloat
    scale::Cint
    c1::Cfloat
    c2::Cfloat
    c3::Cfloat
    yt1::Cfloat
    yt2::Cfloat
    cosf::Cfloat
    prvfreq::Cfloat
    prvbw::Cfloat
    tpidsr::Cfloat
end

struct sp_revsc_dl
    writePos::Cint
    bufferSize::Cint
    readPos::Cint
    readPosFrac::Cint
    readPosFrac_inc::Cint
    dummy::Cint
    seedVal::Cint
    randLine_cnt::Cint
    filterState::Cfloat
    buf::Ptr{Cfloat}
end

struct sp_revsc
    feedback::Cfloat
    lpfreq::Cfloat
    iSampleRate::Cfloat
    iPitchMod::Cfloat
    iSkipInit::Cfloat
    sampleRate::Cfloat
    dampFact::Cfloat
    prv_LPFreq::Cfloat
    initDone::Cint
    delayLines::NTuple{8, sp_revsc_dl}
    aux::sp_auxdata
end

struct sp_rms
    ihp::Cfloat
    istor::Cfloat
    c1::Cfloat
    c2::Cfloat
    prvq::Cfloat
end

struct sp_rpt
    playpos::UInt32
    bufpos::UInt32
    running::Cint
    count::Cint
    reps::Cint
    sr::Cfloat
    size::UInt32
    bpm::Cfloat
    div::Cint
    rep::Cint
    aux::sp_auxdata
    rc::Cint
end

struct sp_rspline
    min::Cfloat
    max::Cfloat
    cps_min::Cfloat
    cps_max::Cfloat
    si::Cfloat
    phs::Cfloat
    rmin_cod::Cint
    rmax_cod::Cint
    num0::Cfloat
    num1::Cfloat
    num2::Cfloat
    df0::Cfloat
    df1::Cfloat
    c3::Cfloat
    c2::Cfloat
    onedsr::Cfloat
    holdrand::Cint
    init::Cint
end

struct sp_saturator
    drive::Cfloat
    dcoffset::Cfloat
    dcblocker::NTuple{2, NTuple{7, Cfloat}}
    ai::NTuple{6, NTuple{7, Cfloat}}
    aa::NTuple{6, NTuple{7, Cfloat}}
end

struct sp_samphold
    val::Cfloat
end

struct sp_scale
    min::Cfloat
    max::Cfloat
end

struct sp_sdelay
    size::Cint
    pos::Cint
    buf::Ptr{Cfloat}
end

struct sp_slice
    vals::Ptr{sp_ftbl}
    buf::Ptr{sp_ftbl}
    id::UInt32
    pos::UInt32
    nextpos::UInt32
end

struct sp_smoothdelay
    del::Cfloat
    maxdel::Cfloat
    pdel::Cfloat
    sr::Cfloat
    feedback::Cfloat
    counter::Cint
    maxcount::Cint
    maxbuf::UInt32
    buf1::sp_auxdata
    bufpos1::UInt32
    deltime1::UInt32
    buf2::sp_auxdata
    bufpos2::UInt32
    deltime2::UInt32
    curbuf::Cint
end

struct sp_spa
    buf::Ptr{Cfloat}
    pos::UInt32
    bufsize::UInt32
    spa::sp_audio
    aux::sp_auxdata
end

struct sp_sparec
    buf::Ptr{Cfloat}
    pos::UInt32
    bufsize::UInt32
    spa::sp_audio
    aux::sp_auxdata
end

struct sp_streson
    freq::Cfloat
    fdbgain::Cfloat
    LPdelay::Cfloat
    APdelay::Cfloat
    Cdelay::Ptr{Cfloat}
    buf::sp_auxdata
    wpointer::Cint
    rpointer::Cint
    size::Cint
end

struct sp_switch
    mode::Cfloat
end

struct sp_tabread
    sig::Cfloat
    index::Cfloat
    mode::Cfloat
    offset::Cfloat
    wrap::Cfloat
    mul::Cfloat
    ft::Ptr{sp_ftbl}
end

struct sp_tadsr
    value::Cfloat
    target::Cfloat
    rate::Cfloat
    state::Cint
    attackRate::Cfloat
    decayRate::Cfloat
    sustainLevel::Cfloat
    releaseRate::Cfloat
    atk::Cfloat
    rel::Cfloat
    sus::Cfloat
    dec::Cfloat
    mode::Cint
end

struct sp_talkbox
    quality::Cfloat
    d0::Cfloat
    d1::Cfloat
    d2::Cfloat
    d3::Cfloat
    d4::Cfloat
    u0::Cfloat
    u1::Cfloat
    u2::Cfloat
    u3::Cfloat
    u4::Cfloat
    FX::Cfloat
    emphasis::Cfloat
    car0::NTuple{1600, Cfloat}
    car1::NTuple{1600, Cfloat}
    window::NTuple{1600, Cfloat}
    buf0::NTuple{1600, Cfloat}
    buf1::NTuple{1600, Cfloat}
    K::UInt32
    N::UInt32
    O::UInt32
    pos::UInt32
end

struct sp_tblrec
    ft::Ptr{sp_ftbl}
    index::UInt32
    record::Cint
end

struct sp_tbvcf
    fco::Cfloat
    res::Cfloat
    dist::Cfloat
    asym::Cfloat
    iskip::Cfloat
    y::Cfloat
    y1::Cfloat
    y2::Cfloat
    fcocod::Cint
    rezcod::Cint
    sr::Cfloat
    onedsr::Cfloat
end

struct sp_tdiv
    num::UInt32
    counter::UInt32
    offset::UInt32
end

struct sp_tenv
    te::Ptr{sp_tevent}
    pos::UInt32
    atk_end::UInt32
    rel_start::UInt32
    sr::UInt32
    totaldur::UInt32
    atk::Cfloat
    rel::Cfloat
    hold::Cfloat
    atk_slp::Cfloat
    rel_slp::Cfloat
    last::Cfloat
    sigmode::Cint
    input::Cfloat
end

struct sp_tenv2
    state::Cint
    atk::Cfloat
    rel::Cfloat
    totaltime::UInt32
    timer::UInt32
    slope::Cfloat
    last::Cfloat
end

struct sp_tenvx
    atk::Cfloat
    rel::Cfloat
    hold::Cfloat
    patk::Cfloat
    prel::Cfloat
    count::UInt32
    a_a::Cfloat
    b_a::Cfloat
    a_r::Cfloat
    b_r::Cfloat
    y::Cfloat
end

struct sp_tgate
    time::Cfloat
    timer::UInt32
end

struct sp_thresh
    init::Cint
    prev::Cfloat
    thresh::Cfloat
    mode::Cfloat
end

struct sp_timer
    mode::Cint
    pos::UInt32
    time::Cfloat
end

struct sp_tin
    fp::Ptr{Cint}
    val::Cfloat
end

struct sp_tone
    hp::Cfloat
    c1::Cfloat
    c2::Cfloat
    yt1::Cfloat
    prvhp::Cfloat
    tpidsr::Cfloat
end

struct sp_trand
    min::Cfloat
    max::Cfloat
    val::Cfloat
end

struct sp_tseg
    beg::Cfloat
    dur::Cfloat
    _end::Cfloat
    steps::UInt32
    count::UInt32
    val::Cfloat
    type::Cfloat
    slope::Cfloat
    tdivnsteps::Cfloat
end

struct sp_tseq
    ft::Ptr{sp_ftbl}
    val::Cfloat
    pos::Int32
    shuf::Cint
end

struct sp_vdelay
    del::Cfloat
    maxdel::Cfloat
    feedback::Cfloat
    prev::Cfloat
    sr::Cfloat
    buf::sp_auxdata
    left::Int32
end

const sp_voc = Cvoid

struct sp_vocoder
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{3, Ptr{Cfloat}}
    atk::Ptr{Cfloat}
    rel::Ptr{Cfloat}
    bwratio::Ptr{Cfloat}
end

struct sp_waveset
    rep::Cfloat
    len::Cfloat
    auxch::sp_auxdata
    length::Int32
    cnt::Int32
    start::Int32
    current::Int32
    direction::Int32
    _end::Int32
    lastsamp::Cfloat
    noinsert::Int32
end

const sp_wavin = Cvoid
const sp_wavout = Cvoid

struct sp_wpkorg35
    lpf1_a::Cfloat
    lpf1_z::Cfloat
    lpf2_a::Cfloat
    lpf2_b::Cfloat
    lpf2_z::Cfloat
    hpf_a::Cfloat
    hpf_b::Cfloat
    hpf_z::Cfloat
    alpha::Cfloat
    cutoff::Cfloat
    res::Cfloat
    saturation::Cfloat
    pcutoff::Cfloat
    pres::Cfloat
    nonlinear::UInt32
end

struct sp_zitarev
    faust::Ptr{Cvoid}
    argpos::Cint
    args::NTuple{11, Ptr{Cfloat}}
    in_delay::Ptr{Cfloat}
    lf_x::Ptr{Cfloat}
    rt60_low::Ptr{Cfloat}
    rt60_mid::Ptr{Cfloat}
    hf_damping::Ptr{Cfloat}
    eq1_freq::Ptr{Cfloat}
    eq1_level::Ptr{Cfloat}
    eq2_freq::Ptr{Cfloat}
    eq2_level::Ptr{Cfloat}
    mix::Ptr{Cfloat}
    level::Ptr{Cfloat}
end

const sp_diskin = Cvoid

struct FFTFREQS
    size::Cint
    s::Ptr{Cfloat}
    c::Ptr{Cfloat}
end

struct FFTwrapper
    fftsize::Cint
    fft::kiss_fftr_cfg
    ifft::kiss_fftr_cfg
    tmp1::Ptr{kiss_fft_cpx}
    tmp2::Ptr{kiss_fft_cpx}
end

struct sp_padsynth
    cps::Cfloat
    bw::Cfloat
    amps::Ptr{sp_ftbl}
end
