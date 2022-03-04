TOKEN=""
with open("jenkins_scripts/sonar-token.txt",'r',encoding='UTF-8') as f:
    content = f.readlines()
    for i in range(46, 86, 1):
        TOKEN=TOKEN + str(content)[i]

file = open('jenkins_scripts/sonar-token.txt','w',encoding='UTF-8')
file.write(TOKEN)
file.close()
