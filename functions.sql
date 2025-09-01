create or replace warehouse large_wh
warehouse_size = 'LARGE'
warehouse_type = standard
auto_resume = true
initially_suspended = true 
auto_suspend = 100
min_cluster_count = 1
max_cluster_count = 10
scaling_policy = 'economy';

use warehouse large_wh;



create or replace function versions_package()
returns table(customer varchar ,asdasd varchar) 
language Python
runtime_version = '3.9'
handler = 'package'
packages = ('pandas', 'numpy')
as
$$
import pandas as pd
import numpy as np
import sys
import os

class package:

    def process(self):
        yield ('asdasd', 'asdadad')
    
$$;


