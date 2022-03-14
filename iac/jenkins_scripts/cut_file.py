FILE_PATH = 'jenkins_scripts/sonar-token.txt'
TOKEN=""
with open(FILE_PATH,'r',encoding='UTF-8') as file_read:

    content = file_read.readlines()
    for i in range(46, 86, 1):
        TOKEN=TOKEN + str(content)[i]

with open(FILE_PATH,'w',encoding='UTF-8') as file_open:
    file_open.write(TOKEN)
    file_open.close()
