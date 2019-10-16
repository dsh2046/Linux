### 1. Free memory cache
To free pagecache:  ```echo 1 > /proc/sys/vm/drop_caches```

To free dentries and inodes:  ```echo 2 > /proc/sys/vm/drop_caches```

To free pagecache, dentries and inodes:  ```echo 3 > /proc/sys/vm/drop_caches```

### 2. Memory test, fill 90% memory
```stress-ng --vm-bytes $(awk '/MemFree/{printf "%d\n", $2 * 0.9;}' < /proc/meminfo)k --vm-keep -m 1```

### 3. List size of folders
```du -sh```  
```du -h --max-depth=1 | sort -hr```

### 4. Kill a process (celery for example)
```ps auxww | grep 'celery' | awk '{print $2}' | xargs kill -9```
