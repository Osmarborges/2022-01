int max(int *v, int ini, int fim)
{
    int pm = ini;
    int j;
    for ( j = ini + 1; j <= fim; j++)
    {
        if (v[j] > v[pm])
        {
            pm = j;
        }
    }
    return pm;
}

void troca(int *v, int i, int j)
{
    int aux = v[i];
    v[i] = v[j];
    v[j] = aux;
}

void SelectionSort(int *v, int n)
{
    int pm;
    int j;
    for (j = n - 1; j > 0; j--)
    {
        pm = max(v, 0, j);
        troca(v, pm, j);
    }
}
void BubleSort(int *v, int n)
{
    int j;
    int i;
    for ( j = n - 1; j > 0; j--)
    {
        for ( i = 0; i < 0; i++)
        {
            if (v[i] > v[i + 1])
            {
                troca(v, i, i++);
            }
        }
    }
}
void merge(int *v, int p, int q, int r)
{
    int i, j;
    int* e = malloc(sizeof(int) * (q-p+2));
    int* d = malloc(sizeof(int) * (r-q+1));
    int ne = q-p+1;
    int nd = r-q;
    for(i = 0; i < ne; i++)
        e[i] = v[p+i];
    e[ne] = INT_MAX;
    for(j = 0; j < nd; j++)
        d[j] = v[q+1+j];
    d[nd] = INT_MAX;
    i = 0;
    j = 0;
    for(int k = p; k <= r; k++)
    {
        if(e[i] <= d[j])
        {
            v[k] = e[i];
            i++;
        }
        else
        {
            v[k] = d[j];
            j++;
        }
    }
    free(e);
    free(d);
}