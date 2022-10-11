function T = create_matrix_from_DH_parameters(L)
syms a_i_1 alpha_i_1 d_i theta_i;
DH_matrix = [cos(theta_i),-sin(theta_i),0,a_i_1;
    cos(alpha_i_1)*sin(theta_i),cos(alpha_i_1)*cos(theta_i),-sin(alpha_i_1),-d_i*sin(alpha_i_1);
    sin(alpha_i_1)*sin(theta_i),sin(alpha_i_1)*cos(theta_i),cos(alpha_i_1),d_i*cos(alpha_i_1);
    0,0,0,1];
T = subs(DH_matrix, {a_i_1,alpha_i_1,d_i,theta_i}, L);
end