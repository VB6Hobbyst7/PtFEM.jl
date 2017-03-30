using PtFEM

data = Dict(
  # Plane(ndim, nst, nxe, nye, nip, direction, finite_element(nod, nodof), axisymmetric)
  :struc_el => Plane(2, 3, 20, 2, 4, :y, Quadrilateral(8, 2), false),
  :properties => [1.0e5 0.0 1.0e-5 1.0e-5;],
  :x_coords => collect(linspace(0.0, 1.0, 21)),
  :y_coords => collect(linspace(0.05, -0.05, 3)),
  :temp => [],
  :support => [
    (1, [0 0]),
    (2, [0 0]),
    (3, [0 0]),
    (4, [0 0]),
    (5, [0 0])
  ],
  :dtemp => [
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50, 0.50, 0.00, -0.50,
    0.50, 0.25, 0.00, -0.25, -0.50
  ],
  :nspr => [
    (163, 2, 50.0)
  ]
)

data |> display
println()

@time m = FE5_5(data)
println()
