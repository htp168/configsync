import asyncio
import html
import ssl
import sys
import xmlrpc.client

from img_transfer import *

if len(sys.argv) == 1:
    print('请输入markdown文件路径,带双引号哦')
    exit(-1)

md_path = sys.argv[1:][0]  # markdown路径
dir_name = os.path.dirname(md_path)

title, _ = os.path.splitext(os.path.basename(md_path))  # 文件名作为博客标题

print('标题：'+md_path)