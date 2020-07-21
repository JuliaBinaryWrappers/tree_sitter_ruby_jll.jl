# Autogenerated wrapper script for tree_sitter_ruby_jll for x86_64-apple-darwin14-cxx11
export libtreesitter_ruby

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libtreesitter_ruby`
const libtreesitter_ruby_splitpath = ["lib", "libtreesitter_ruby.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_ruby_path = ""

# libtreesitter_ruby-specific global declaration
# This will be filled out by __init__()
libtreesitter_ruby_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_ruby = "@rpath/libtreesitter_ruby.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_ruby")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_ruby_path = normpath(joinpath(artifact_dir, libtreesitter_ruby_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_ruby_handle = dlopen(libtreesitter_ruby_path)
    push!(LIBPATH_list, dirname(libtreesitter_ruby_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

