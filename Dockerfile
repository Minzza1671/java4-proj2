# OpenJDK 11 이미지를 기반으로 사용
FROM openjdk:17-jdk-slim

# 애플리케이션 JAR 파일을 컨테이너 내 /app 디렉토리에 복사
COPY ReadingGoalTracker-0.0.1-SNAPSHOT.jar /app/ReadingGoalTracker-0.0.1-SNAPSHOT.jar

# 컨테이너 내 작업 디렉토리를 /app으로 설정
WORKDIR /app

EXPOSE 8080

# 애플리케이션을 실행하는 명령
CMD ["java", "-jar", "ReadingGoalTracker-0.0.1-SNAPSHOT.jar"]


