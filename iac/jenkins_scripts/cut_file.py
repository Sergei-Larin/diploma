TOKEN=""
with open("jenkins_scripts/sonar-token.txt",'r',encoding='UTF-8') as file_read, \
     open('jenkins_scripts/sonar-token.txt','w',encoding='UTF-8') as file_open:

    content = file_read.readlines()
    for i in range(46, 86, 1):
        TOKEN=TOKEN + str(content)[i]
    file_open.write(TOKEN)
