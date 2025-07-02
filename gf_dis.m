function distance = gf_element_distance(a, b)
% GF_ELEMENT_DISTANCE 计算GF域内两个元素的码距（汉明距离）
% ? distance = GF_ELEMENT_DISTANCE(a, b) 将GF域元素a和b转换为二进制表示后，
% ? 计算两者的汉明距离（对应位不同的个数）

? ? % 将GF域元素转换为整数表示
? ? a_num = gf2num(a);
? ? b_num = gf2num(b);
? ? 
? ? % 确定二进制表示的最大位数（取两个数的最大位数，确保位数一致）
? ? max_bits = max(ceil(log2(a_num + 1)), ceil(log2(b_num + 1)));
? ? % 若两数均为0，强制使用1位二进制表示
? ? if max_bits == 0
? ? ? ? max_bits = 1;
? ? end
? ? 
? ? % 转换为二进制向量（高位在前）
? ? a_bin = de2bi(a_num, max_bits);
? ? b_bin = de2bi(b_num, max_bits);
? ? 
? ? % 计算异或结果（模2加等价于异或）
? ? xor_result = mod(a_bin + b_bin, 2);
? ? 
? ? % 异或结果中1的个数即为汉明距离
? ? distance = sum(xor_result);
end

