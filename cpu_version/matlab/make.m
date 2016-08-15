if exist('~/libs/eigen/Eigen/Dense','file')
    disp('compiling ...');
    mex -I/home/wieschol/libs/eigen/ ...
        pqt.cxx  ...
        CXXFLAGS="\$CXXFLAGS -std=c++11" ...
        COPTIMFLAGS="\$COPTIMFLAGS -O2" ...
        -output pqt;
else
    disp('Eigen is missing');
end