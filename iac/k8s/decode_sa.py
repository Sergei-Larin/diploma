FILE_PATH = 'k8s/sa.txt'

with open(FILE_PATH,'r',encoding='UTF-8') as file_read:

    content = file_read.readlines()
    TOKEN = content[0].split('\n')[0]

with open(FILE_PATH,'w',encoding='UTF-8') as file_open:
    file_open.write(TOKEN)
    file_open.close()
