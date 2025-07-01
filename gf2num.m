function distance = gf2num(gf_a)
    distance = -1;
    switch true
        case (gf_a == gf(0,3))
            distance = 0;
        case (gf_a == gf(1,3))
            distance = 1;
        case (gf_a == gf(2,3))
            distance = 2;
        case (gf_a == gf(3,3))
            distance = 3;
        case (gf_a == gf(4,3))
            distance = 4;
        case (gf_a == gf(5,3))
            distance = 5;
        case (gf_a == gf(6,3))
            distance = 6;
        case (gf_a == gf(7,3))
            distance = 7;
    end
end
