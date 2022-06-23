#pragma once
void insertion(int *v, int k){
	int x = v[k];
	int i = k-1;
	while((i >= 0) && (v[i] > x)){
		v[i+1] = v[i];
		i--;		
	}
	v[i+1]= x;
}
void insertionSort(int* v, int n){
	int j;
	for(j=1;j<n;j++){
		insertion(v,j);
	}
}