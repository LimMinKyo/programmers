class Solution {
    public int[] solution(int[] num_list) {
        int[] answer = new int[num_list.length + 1];

        for (int i = 0; i < num_list.length; i++) {
            answer[i] = num_list[i];
        }

        int last = num_list[num_list.length - 1];
        int second = num_list[num_list.length - 2];

        answer[num_list.length] = last > second ? last - second : last * 2;
        return answer;
    }
}