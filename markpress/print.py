import asyncio
import html
import ssl
import sys
import xmlrpc.client

md_path = sys.argv[1:][0]  # markdown·��
dir_name = os.path.dirname(md_path)

title, _ = os.path.splitext(os.path.basename(md_path))  # �ļ�����Ϊ���ͱ���

print(md_path)