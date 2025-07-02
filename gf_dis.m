function distance = gf_element_distance(a, b)
% GF_ELEMENT_DISTANCE ����GF��������Ԫ�ص���ࣨ�������룩
% ? distance = GF_ELEMENT_DISTANCE(a, b) ��GF��Ԫ��a��bת��Ϊ�����Ʊ�ʾ��
% ? �������ߵĺ������루��Ӧλ��ͬ�ĸ�����

? ? % ��GF��Ԫ��ת��Ϊ������ʾ
? ? a_num = gf2num(a);
? ? b_num = gf2num(b);
? ? 
? ? % ȷ�������Ʊ�ʾ�����λ����ȡ�����������λ����ȷ��λ��һ�£�
? ? max_bits = max(ceil(log2(a_num + 1)), ceil(log2(b_num + 1)));
? ? % ��������Ϊ0��ǿ��ʹ��1λ�����Ʊ�ʾ
? ? if max_bits == 0
? ? ? ? max_bits = 1;
? ? end
? ? 
? ? % ת��Ϊ��������������λ��ǰ��
? ? a_bin = de2bi(a_num, max_bits);
? ? b_bin = de2bi(b_num, max_bits);
? ? 
? ? % �����������ģ2�ӵȼ������
? ? xor_result = mod(a_bin + b_bin, 2);
? ? 
? ? % �������1�ĸ�����Ϊ��������
? ? distance = sum(xor_result);
end

