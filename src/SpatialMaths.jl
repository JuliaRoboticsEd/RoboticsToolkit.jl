module SpatialMaths

export AbstractPoint, AbstractFrame, AbstractPose
export Point, Frame, Pose
export Point2, Frame2, Pose2
export rot2, trot2, transl2, se2, so2
export Point3, Frame3, Pose3
export rotx, roty, rotz, trotx, troty, trotz, transl3, se3, so3
export transl

include("spatialmaths/pose.jl")
include("spatialmaths/pose_graph.jl")
include("spatialmaths/point.jl")
include("spatialmaths/frame.jl")
include("spatialmaths/transforms.jl")
include("spatialmaths/spatial_types.jl")

end # (sub)module SpatialMaths
