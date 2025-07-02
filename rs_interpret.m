function  interpret_msg = rs_interpret(in_msg, all_code_msg, all_msg)
    % 计算输入消息与所有编码消息之间的距离
    rs_dis = zeros(1, size(all_code_msg, 1));
    for i = 1:size(all_code_msg, 1)
        rs_dis(i) = rscode_dis(in_msg, all_code_msg(i,:));    
    end
    
    % 找出最小距离和对应的索引
    rs_dis_min = min(rs_dis);
    index = find(rs_dis == rs_dis_min);
    
    % 返回第一个匹配的原始消息
    interpret_msg = all_msg(index(1), :);
end
