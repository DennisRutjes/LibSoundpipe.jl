module LibSoundpipe

import Libdl

using CEnum

include("ctypes.jl")
export Ctm, Ctime_t, Cclock_t

include(joinpath(@__DIR__, "Soundpipe_base.jl"))
include(joinpath(@__DIR__, "Soundpipe_api.jl"))

# export everything
#foreach(names(@__MODULE__, all=true)) do s
#    if startswith(string(s), "SOME_PREFIX")
#        @eval export $s
#    end
#end

end # module
