function a = same(msg, new_msg)
    % 检查两个矩阵的尺寸是否一致
    if size(msg) ~= size(new_msg)
        error('输入矩阵msg和new_msg的尺寸必须一致');
    end
    
    temp = 0;
    [N, M] = size(msg);
    for i = 1:N
        for j = 1:M
            if msg(i,j) == new_msg(i,j)
                temp = temp + 1;
            end
        end
    end
    a = temp;
end
