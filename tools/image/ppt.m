function ppt()
    b = zeros(480000, 1);
    test = imread('test.png');
    a = dec2hex(test);
    diary test.log;
    disp(a);
    diary off;
    for i = 1 : 480000
        b(i) = hex2dec(a(i, :));
    end
    c = reshape(b, [600, 800]);
    imagesc(c);
end