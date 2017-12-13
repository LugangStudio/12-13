package cn.ets.testservices;

import java.lang.reflect.Array;

import org.junit.Test;

public class test {
	int arr[]={1,0,0,0,0};
void add(int i){
	for(int i1=arr.length-1;i1>0;i1--){
		if(arr[i1]!=0)arr[i1]=i;
	}
}
public static void main(String[] args) {
	test t=new test();
	t.add(2);
	for(int i=0;i<t.arr.length;i++){
		System.out.println(t.arr[i]);
	
	
	
	}

}
}
