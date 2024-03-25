% 숫자를 엑셀 알파벳으로 바꿔주는 함수
function colStr = numToExcelEng(num)
colStr = '';
while num > 0
    rem = mod(num-1, 26); % 0부터 시작하는 나머지를 구함
    colStr = [char('A' + rem), colStr]; % 해당 문자를 결과 문자열 앞에 추가
    num = (num - rem - 1) / 26; % 다음 자릿수를 계산
end
end