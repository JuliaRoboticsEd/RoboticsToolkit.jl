module SpatialMaths

export AbstractPoint, AbstractFrame, AbstractPose
export Point, Frame, Pose
export rot2, trot2, transl2, se2, so2

include("spatialmaths/pose.jl")
include("spatialmaths/pose_graph.jl")
include("spatialmaths/point.jl")
include("spatialmaths/frame.jl")
include("spatialmaths/transforms.jl")
include("spatialmaths/spatial_types.jl")

end # (sub)module SpatialMaths
