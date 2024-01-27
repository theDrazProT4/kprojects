import com.intuit.karate.junit5.Karate;

public class karateRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:apiREST/karateTest.feature");
    }

    @Karate.Test
    Karate testSoap() {
        return Karate.run("classpath:apiSOAP/testSoap.feature");
    }

    @Karate.Test
    Karate testGraphQL() {
        return Karate.run("classpath:GRAPHQL/graphQLTest.feature");
    }
    @Karate.Test
    Karate testApiRestPostAutomatizacion() {
        return Karate.run("classpath:apiREST/karateTest.feature").tags("@CasoPost");
    }

    @Karate.Test
    Karate testApiSoapPostAutomatizacion() {
        return Karate.run("classpath:apiSOAP/testSoap.feature").tags("@soapMatch");
    }

    @Karate.Test
    Karate testGraphQLAutomatizacion() {
        return Karate.run("classpath:GRAPHQL/graphQLTest.feature").tags("@graphQLTestUsers");
    }
    @Karate.Test
    Karate testCSV() {
        return Karate.run("classpath:apiREST/testCsv.feature").tags("@CsvTest");
    }

    @Karate.Test
    Karate testJSON() {
        return Karate.run("classpath:apiREST/testReadJson.feature").tags("@JsonTest");
    }

    @Karate.Test
    Karate testSoapXml() {
        return Karate.run("classpath:apiSOAP/testReadXml.feature").tags("@soapXml");
    }

    @Karate.Test
    Karate testGraphQLReadTxt() {
        return Karate.run("classpath:GRAPHQL/graphQLText.feature").tags("@TextGraphtext");
    }
    @Karate.Test
    Karate BearerToken() {
        return Karate.run("classpath:Tokens/token.feature").tags("@BasicAToken");
    }
    @Karate.Test
    Karate TestDB() {
        return Karate.run("classpath:connectDB/connectDB.feature").tags("@TestBD");
    }

}
