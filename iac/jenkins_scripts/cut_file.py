TOKEN=""
file_handle = open("jenkins_scripts/sonar-token.txt",'r',encoding='UTF-8')
try:
    content = file_handle.readlines()
    for i in range(46, 86, 1):
        TOKEN=TOKEN + str(content)[i]
finally:
    file_handle.close()

file_open = open('jenkins_scripts/sonar-token.txt','w',encoding='UTF-8')
try:
    file_open.write(TOKEN)
finally:
    file_open.close()
