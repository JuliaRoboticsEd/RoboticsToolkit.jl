# using StaticArrays: later package all types as static/mutable fixed size arrays/matrices

"""
Definition of abstract spatial types to be used across the package
"""
# todo: make types parametrized: {N(dims), T(type)}
# todo: look for packages to depend on: GeometryTypes
# todo: quaternions?
abstract type AbstractPoint <: AbstractVector{Float64} end   # coords
abstract type AbstractFrame <: AbstractVector{Float64} end   # location vec, orientation vec
abstract type AbstractPose <: AbstractVector{Float64} end    # transl & rot components

abstract type AbstractTransform <: AbstractMatrix{Float64} end
abstract type SO2 <: AbstractTransform end
abstract type SE2 <: AbstractTransform end
abstract type SO3 <: AbstractTransform end
abstract type SE3 <: AbstractTransform end
