FROM openjdk:8-jre
COPY src/target/universal/*-1.0-SNAPSHOT.zip /src
EXPOSE 9000 9443
ENTRYPOINT ["/entrypoint-cmd.sh"]
CMD /svc/bin -Dhttps.port=9443 -Dplay.crypto.secret="b/i^_d9rZ@5K;?G4TQLQzpubGz/jwkvX3uwYu^fw]x`oBaemGMeJ4D_KTpZuQ/QD"