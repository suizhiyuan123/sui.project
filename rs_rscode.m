 function code = rs_rscode(msg)
    % RS编码器函数 - 将消息编码为RS码字
    
    % 定义GF(2^3)上的生成矩阵
    g = [1 0 0 3 2 1 3;
         0 1 0 5 5 1 4;
         0 0 1 7 6 1 6];
     
    % 将生成矩阵转换到GF(2^3)有限域
    g = gf(g, 3);
    
    % 检查输入消息维度
    if size(msg, 2) ~= size(g, 1)
        error('输入消息的列数必须等于生成矩阵的行数');
    end
    
    % 将输入消息转换到GF(2^3)有限域
    msg_gf = gf(msg, 3);
    
    % 执行编码操作
    code = msg_gf * g;
end
