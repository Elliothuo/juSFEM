function Assemblehex(IK,JK,VK,ke,i,j,k,l,m)

    DOF = [3*i-2 3*i-1 3*i 3*j-2 3*j-1 3*j 3*k-2 3*k-1 3*k 3*l-2 3*l-1 3*l 3*m-2 3*m-1 3*m]
    for n1 = 1:15
        for n2 = 1:15
            #KE[DOF[n1],DOF[n2]] = KE[DOF[n1],DOF[n2]] + ke[n1,n2]
            IK = append!(IK,DOF[n1])
            JK = append!(JK,DOF[n2])
            VK = append!(VK,ke[n1,n2])
        end
    end

    return IK, JK, VK
end
