int main(){
    int n;
    n=getInt();
    int m=0;
    int[][] a=new int[n][n];
    for (int i=0;i<n;i++)
        for (int j=0;j<n;j++)
            a[i][j]=++m;
    printlnInt(a[n-1][n-1]);
    return 0;
}
/*
Test Package: Codegen
Author: 10' Huan Yang
Time: 2020-01-24
Input:
=== input ===
102
=== end ===
Output:
=== output ===
68
=== end ===
ExitCode: 0
InstLimit: -1
Origin Package: Codegen Pretest-523
*/

bool check(int a, int N) {
    return ((a < N) && (a >= 0));
}

int main() {
    int N;
    int head;
	int startx;
	int starty;
    int targetx;
	int targety;
	int tail;
	int ok;
	int now;
    int x;
	int y;
    int[] xlist;
	int[] ylist;
    int[][] step;
    int i;
	int j;

    N = getInt();
    head =0;
    tail = 0;
    startx = 0;
    starty = 0;
    targetx = N-1;
    targety = N-1;
    x = 0;
    y = 0;
    now = 0;
    ok = 0;
    xlist = new int[N * N];
    for (i = 0; i < N * N; i ++ )
        xlist[i] = 0;
    ylist = new int[N * N];
    for (i = 0; i < N * N; i ++ )
        ylist[i] = 0;
    step = new int[N][];
    for (i = 0; i < N;  i ++ ) {
		step[i] = new int[N];
        for (j = 0; j < N; j ++ )
        step[i][j] = -1;
    }
    xlist[0] = startx;
    ylist[0] = starty;
    step[startx][starty] = 0;
    while (head <= tail)
    {
        now = step[xlist[head]][ylist[head]];
        printInt(xlist[head]);
        print(" ");
        printInt(ylist[head]);
        println(":");
        x = xlist[head] - 1;
        y = ylist[head] - 2;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] - 1;
        y = ylist[head] + 2;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] + 1;
        y = ylist[head] - 2;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] + 1;
        y = ylist[head] + 2;
        printInt(x);
        print(" ");
        printInt(y);
        print(" ");
        if (check(x, N) && check(y, N)) printInt(step[x][y]);
        println("");
        if (step[x][y] == -1) println("YES");
        else println("NO");

        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] - 2;
        y = ylist[head] - 1;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] - 2;
        y = ylist[head] + 1;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] + 2;
        y = ylist[head] - 1;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        x = xlist[head] + 2;
        y = ylist[head] + 1;
        if (check(x, N) && check(y, N) && step[x][y] == -1)
        {
            tail = tail + 1;
            xlist[tail] = x;
            ylist[tail] = y;
            step[x][y] = now + 1;
            if (x == targetx && y == targety) ok = 1;
        }
        if (ok == 1) break;
        head = head + 1;
    }
    if (ok == 1) println(toString(step[targetx][targety]));
    else print("no solution!\n");
    return 0;
}
