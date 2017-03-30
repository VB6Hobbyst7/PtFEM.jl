using PtFEM

nf_path = Pkg.dir("PtFEM", "examples", "5 Elastic Solids", "p5.7.1.nf.dat")
loads_path = Pkg.dir("PtFEM", "examples", "5 Elastic Solids", "p5.7.1.loads.dat")

data = Dict(
  # Solid(ndim, nst, nxe, nye, nze, nip, direction=:r, finite_element(nod, nodof))
  :struc_el => Solid(3, 6, 20, 60, 40, 8, Hexahedron(20, 3)),
  :properties => [
    100.0 0.3;
     ],
  :x_coords => [
    0.0000,  0.0250,  0.0500,  0.0750,  0.1000,  0.1250,  0.1500,  0.1750,  0.2000,
    0.2250,  0.2500,  0.2750,  0.3000,  0.3250,  0.3500,  0.3750,  0.4000,  0.4250,
    0.4500,  0.4750,  0.5000
  ],
  :y_coords => [
    0.0000, 0.0500, 0.1000, 0.1500, 0.2000, 0.2500, 0.3000, 0.3500, 0.4000,
    0.4500, 0.5000, 0.5500, 0.6000, 0.6500, 0.7000, 0.7500, 0.8000, 0.8500,
    0.9000, 0.9500, 1.0000, 1.0500, 1.1000, 1.1500, 1.2000, 1.2500, 1.3000,
    1.3500, 1.4000, 1.4500, 1.5000, 1.5500, 1.6000, 1.6500, 1.7000, 1.7500,
    1.8000, 1.8500, 1.9000, 1.9500, 2.0000, 2.0500, 2.1000, 2.1500, 2.2000,
    2.2500, 2.3000, 2.3500, 2.4000, 2.4500, 2.5000, 2.5500, 2.6000, 2.6500,
    2.7000, 2.7500, 2.8000, 2.8500, 2.9000, 2.9500, 3.0000
  ],
  :z_coords => [
    0.0000, -0.0500, -0.1000, -0.1500, -0.2000, -0.2500, -0.3000, -0.3500, -0.4000,
   -0.4500, -0.5000, -0.5500, -0.6000, -0.6500, -0.7000, -0.7500, -0.8000, -0.8500,
   -0.9000, -0.9500, -1.0000, -1.0500, -1.1000, -1.1500, -1.2000, -1.2500, -1.3000,
   -1.3500, -1.4000, -1.4500, -1.5000, -1.5500, -1.6000, -1.6500, -1.7000, -1.7500,
   -1.8000, -1.8500, -1.9000, -1.9500, -2.0000
  ],
  :support => PtFEM.read_nf_file(nf_path),
  :loaded_nodes => PtFEM.read_loads_file(loads_path)
)

@time m = FE5_3(data)

@time m = FE5_3(data)
println()
