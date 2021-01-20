package vn.edu.nlu.Beans;

import java.util.StringTokenizer;

public class MyDate {
    private int day, month, year;

    public MyDate(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public MyDate(String input) {
        StringTokenizer stk = new StringTokenizer(input, "-");
        if (stk.countTokens() == 3) {
            this.day = Integer.parseInt(stk.nextToken());
            this.month = Integer.parseInt(stk.nextToken());
            this.year = Integer.parseInt(stk.nextToken());
        }
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return day + "-" + month + "-" + year;
    }
}
