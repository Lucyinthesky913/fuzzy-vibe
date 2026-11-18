# import necessary packages

record = []
io = open("data_8","r")# data_n, n is the system size
    push!(record, deserialize(io))#[relevant parameter, nm (or size), (energy, spin l*(l+1), quantum number, quantum number)]
close(io)
io = open("data_10","r")
    push!(record, deserialize(io))#[chem, nm, (energy, spin l*(l+1), quantum number, quantum number)]
close(io)
io = open("data_12","r")
    push!(record, deserialize(io))#[chem, nm, (energy, spin l*(l+1), quantum number, quantum number)]
close(io)

data = []
spin_max = 5
for spinz=0:1:spin_max
    spin = spinz*(spinz+1)
    data_spin = []
    for i=1:1:3
        data_size = []
        for j in eachindex(record[1])
            abs(record[i][j][2]-spin)<0.1 && push!(data_size, record[i][j][1])
        end
        push!(data_spin, data_size)
    end
    push!(data, data_spin)
end# to group data into spin groups

dim = deepcopy(data)
for i=1:1:3
    gs = data[1][i][1]
    norm = (data[3][i][2]-gs)/3
    for s = 1: (spin_max+1)
        for j in eachindex(data[s][i])
            dim[s][i][j] = (data[s][i][j]-gs)/norm
        end
    end
end# normalization at each size

x = []
y = []
for i = 1:1:3
    for j = 0:1:spin_max
        for k in eachindex(dim[j+1][i])
            push!(x, j+0.1*(i-1))# create spacing for different sizes, but make them approximately in one area
            push!(y, dim[j+1][i][k])
        end
    end
end#rearrange them as different sizes but in one array
plt = plot()

f0(par) = 1.412625
f01(par) = 2.412625
f02(par) = 3.412625# theoretical data

plot!(f0, 0, 0.2, label="ϵ", linewidth=5)
plot!(f02, 0, 0.2, label="∇²ϵ, spin=0", linewidth=5)
plot!(f01, 1.0, 1.2, label="∇ϵ", linewidth=5)
plot!(f02, 2, 2.2, label = "∇∇ϵ, spin=2", linewidth=5)

scatter!(Float64.(x), Float64.(y), label="scaling dimension with N=8,10,12")