TOKEN=""
file_handle = open("jenkins_scripts/sonar-token.txt",'r',encoding='UTF-8')
content = file_handle.readlines()
for i in range(46, 86, 1):
    TOKEN=TOKEN + str(content)[i]
file_handle.close()

file = open('jenkins_scripts/sonar-token.txt','w',encoding='UTF-8')
file.write(TOKEN)
file.close()
