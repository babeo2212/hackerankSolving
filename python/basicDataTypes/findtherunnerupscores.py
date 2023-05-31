"""
https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem?isFullScreen=true

Given the participants' score sheet for your University Sports Day, you are required to find the runner-up score. You are given

scores. Store them in a list and find the score of the runner-up.

Input Format

The first line contains
. The second line contains an array of

integers each separated by a space.

Constraints

Output Format

Print the runner-up score.
"""

if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    print(arr)
    # n = 5
    # arr = [2, 3,6,6,5]
    arr.sort()
    firstscore = arr[-1]

    for i in range(n - 1, -1, -1):
        if arr[i] != firstscore:
            print(arr[i])
            break

