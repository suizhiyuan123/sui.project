function a = same(msg, new_msg)
    % �����������ĳߴ��Ƿ�һ��
    if size(msg) ~= size(new_msg)
        error('�������msg��new_msg�ĳߴ����һ��');
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
