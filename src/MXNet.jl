__precompile__()

module MXNet

using Reexport

# we put everything in the namespace mx, because there are a lot of
# functions with the same names as built-in utilities like "zeros", etc.
export mx
module mx

import Base.Iterators: filter

using Formatting
using MacroTools
using TakingBroadcastSeriously: @unfuse
import TakingBroadcastSeriously: broadcast_

# Functions from base that we can safely extend and that are defined by libmxnet.
import Base: round, ceil, floor, cos, sin, abs, sign, exp, sqrt, exp, log, norm,
             transpose

###############################################################################
#  exports
###############################################################################

# symbolic-node.jl
export SymbolicNode,
       Variable,
       @var

# ndarray.jl
export NDArray,
       context,
       empty,
       expand_dims

# executor.jl
export Executor,
       bind,
       simple_bind,
       forward,
       backward

# context.jl
export Context,
       cpu,
       gpu

# model.jl
export AbstractModel,
       FeedForward,
       predict

# nn-factory.jl
export MLP

# metric.jl
export AbstractEvalMetric,
       ACE,
       Accuracy,
       MSE,
       MultiACE,
       MultiMetric,
       NMSE,
       SeqMetric

# kvstore.jl
export KVStore

# initializer.jl
export AbstractInitializer,
       UniformInitializer,
       NormalInitializer,
       XavierInitializer

# optimizer.jl
export AbstractOptimizer,
       AdaDelta,
       AdaGrad,
       ADAM,
       AdaMax,
       Nadam,
       RMSProp,
       SGD

# io.jl
export AbstractDataProvider,
       AbstractDataBatch,
       DataBatch,
       ArrayDataProvider,
       ArrayDataBatch

# visualize.jl
export to_graphviz

###############################################################################
#  includes
###############################################################################

include("base.jl")

include("context.jl")
include("util.jl")
include("broadcast.jl")

include("ndarray.jl")
include("random.jl")

include("name.jl")
include("symbolic-node.jl")
include("executor.jl")

include("metric.jl")
include("optimizer.jl")
include("initializer.jl")

include("io.jl")
include("kvstore.jl")

include("callback.jl")
include("model.jl")

include("visualize.jl")

include("nn-factory.jl")

include("deprecated.jl")

end # mx

@reexport using .mx

end # module MXNet
