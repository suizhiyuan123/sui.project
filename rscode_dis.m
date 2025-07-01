function distance = rs_code_distance(code1, code2)
% RS_CODE_DISTANCE 计算两个RS码之间的汉明距离
%   distance = RS_CODE_DISTANCE(code1, code2) 输入两个长度相同的RS码向量，
%   返回它们之间的汉明距离（对应位置不同元素的个数）

    % 输入验证：检查输入是否为向量且长度相等
    if ~isvector(code1) || ~isvector(code2)
        error('输入必须为向量');
    end
    if length(code1) ~= length(code2)
        error('两个输入向量的长度必须相等');
    end
    
    distance = 0;
    % 遍历向量，计算不同元素的个数
    for i = 1:length(code1)
        if gf_dis(code1(i), code2(i)) ~= 0
            distance = distance + 1;
        end
    end
end
