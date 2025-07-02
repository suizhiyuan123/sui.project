function distance = rs_code_distance(code1, code2)
% RS_CODE_DISTANCE ��������RS��֮��ĺ�������
%   distance = RS_CODE_DISTANCE(code1, code2) ��������������ͬ��RS��������
%   ��������֮��ĺ������루��Ӧλ�ò�ͬԪ�صĸ�����

    % ������֤����������Ƿ�Ϊ�����ҳ������
    if ~isvector(code1) || ~isvector(code2)
        error('�������Ϊ����');
    end
    if length(code1) ~= length(code2)
        error('�������������ĳ��ȱ������');
    end
    
    distance = 0;
    % �������������㲻ͬԪ�صĸ���
    for i = 1:length(code1)
        if gf_dis(code1(i), code2(i)) ~= 0
            distance = distance + 1;
        end
    end
end
