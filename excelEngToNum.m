% 엑셀 알파벳을 숫자로 바꿔주는 함수
function num = excelEngToNum(cellStr)
s = double(cellStr);
p = 0;

% 자리수가 늘어날 수록 제곱이 늘어남
% digitCnt가 2일 때는 1번 26^1
% digitCnt가 3일 때는 1번 26^2, 2번 26^1
% digitCnt가 4일 때는 1번 26^3, 2번 26^2, 3번 26^1 이런식...
digitCnt = width(s);
squareNum = digitCnt - 1;


if digitCnt > 1
    for i = 1:digitCnt
        if i == digitCnt
            break;
        end

        sn = (26 ^ squareNum);

        engNum = s(i) - 64;
        % p = p + (engNum * 26);
        p = p + (engNum * sn);

        squareNum = squareNum -1; % 제곱수 갱신
    end
end
num = p + (s(end) - 64);

end