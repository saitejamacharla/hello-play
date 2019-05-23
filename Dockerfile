FROM openjdk:8-jre
COPY src/target/universal/*-1.0-SNAPSHOT.zip /SNAPSHOT.zip
EXPOSE 9000 9443
CMD unzip -d svc SNAPSHOT.zip && mv svc/*/* svc/ && rm svc/bin/*.bat && mv svc/bin/* svc/bin/start && /svc/bin/start -Dhttps.port=9443 -Dplay.http.secret.key='b/i^_d9rZ@5K;?G4TQLQzpubGz/jwkvX3uwYu^fw]x`oBaemGMeJ4D_KTpZuQ/QD'