module RoboticsToolkit

# Write your package code here.

# bunch of things todo:
# 1. constructor for pose2 from x,y,θ, and no name; a frame; x,y,θ, name, namedtuples,
#       vararg NTuple with set symbols, etc...  (named tuple: x=, y=, θ=; 𝑉, name𝑈).
# 2. type stable system: {pose,frame} ± {pose,frame} = {pose, frame}; (pose <--> frame)
# 3. type stable way for interaction of AbstractPose with AbstractPoint with transforms
# 4. for accurate and easy to write conversions and operations for/on (pose <--> frame), add
#       custom getfield operators for pose2 so that AbstractPose.x,... can get the relevant
#       information. same for name property of pose and frame.
# 5. plot directed graph of poses and relative poses: called spatial relationships
#       (reference: Pg 20 of RVC 2nd ed); probably better suited for RTK SpacialMaths module
# 6. MOST IMPORTANT: Since frames can change, we should allow storing and keeping track of
#       frames internally using a dictionary (only allocate to dictionary if name≠unnamed).
#       So that if the base frame for something changes, then an automatic broadcast/message
#       can be sent to all dependants to be updated. Also necessary for efficient usage of
#       memory. Gets a useful thing, and implicitly keeps a spatial dependency graph, and
#       tracks inconsistencies during runtime: better for code reliability and readability.
#       option for update as you go, or update all dependents! similar to the callback and
#       calculate for all option in ortools. NOTE: The pose itself will also have to be a
#       part of the graph and reference-able.
# 6.b.  It will be nice to have dynamic scoping of the spatial dependency graph (SDG), i.e.,
#       it should be automatically constructed upon construction of a geometric entity and
#       remain available for those (future) entities in the same scope. If out of scope,
#       then destruct the graph. Can toggle callback, affect all, and SDG disabled mode in
#       pose declarations. Scope this properly; other easier and explicit ways to do the
#       same thing: create an SDG from a list of poses and call update_all!(SDG, pose).
#       Such a spatial dependency graph is called a PoseGraph!
# 6.c.  Have the option to check for conflicting dependency in poses (by default off). So
#       for example, we have {X} defined wrt {O} and {W}, but the ξw ⊕ ʷξₓ ≠ ξₓ (wrt O)
#       then throw a conflicting error.
# 6.d.  Store name of frames (𝑈, 𝑉) = strings and the transform ᵛTᵤ in pose 2. For SDG, we
#       can have frames by the name of {𝑉} inserted with their relative transformations to
#       origin. rest of the relative transformations from one frame to another can be
#       calculated by DFS.
# translate (SE2)
# rotate (SE2)
# minus operator on pose and point2, relying on the unary - operator defined for both
# scalar multiplation operator for Point2. - operator on point = multiplation by -1.
# ability to define a Point2 with a (julia) vector and a static vector containing 2 elements

# todo: convert se2() transformations to use static block matrices (StaticArrays.jl)
# treat points and vectors as different objects. Adding points not allowed, but vectors
# allowed. p₁ - p₂ = v₁₂ (vec for 1 wrt 2). But then frames don't have any meaning for
# vectors. Maybe, for ease of use, make vectors and points the same thing, also because
# subtracting points outside the same frame of reference has no meaning. So with the
# required assertions, it should be fine to have vecs and points as the same thing. But
# extend the base Vector{T}/SVector{N,T} to be converted and operated with points.
# todo: a hierarchichal type system for SE2, SO2 (and SE3, SO3 as well)

""""
representation of an SE(2) transformation; {𝑉} is the optional reference frame (in world
coordinates)

@with_kw mutable struct SE2{T <: Real} <: AbstractPose
    𝑈::Frame2{T,<:AbstractString} = Frame2{T,String}(0, 0, 0, "unnamed") # Frame{pose head}
    𝑉::Frame2{T,<:AbstractString} = 𝑊(T) # Frame{pose tail/base (reference)}
end
"""

end
