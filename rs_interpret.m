function  interpret_msg = rs_interpret(in_msg, all_code_msg, all_msg)
    % ����������Ϣ�����б�����Ϣ֮��ľ���
    rs_dis = zeros(1, size(all_code_msg, 1));
    for i = 1:size(all_code_msg, 1)
        rs_dis(i) = rscode_dis(in_msg, all_code_msg(i,:));    
    end
    
    % �ҳ���С����Ͷ�Ӧ������
    rs_dis_min = min(rs_dis);
    index = find(rs_dis == rs_dis_min);
    
    % ���ص�һ��ƥ���ԭʼ��Ϣ
    interpret_msg = all_msg(index(1), :);
end
