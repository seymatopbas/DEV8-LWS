public with sharing class UsersPOSTCallout {

    //SF to External - JAVA,Python,Dotnet (Non Salesforce)

        public static void createUsersPOST(){

            Http http = new Http();
            HttpRequest request = new HttpRequest();
            HttpResponse response = new HttpResponse();

            //Request
            request.setEndpoint('https://gorest.co.in/public/v2/users');
            request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json');
            request.setHeader('Accept', 'application/json');

            String token = '4336cec5186cd74f32d7b4a6e70a77abba1897d15c4ae702caf41ef071117d3f';
            request.setHeader('Authorization', 'Bearer '+token);

            //(Integer id1,String name1,String email1,String gender1,String status1)
            UsersPOSTWrapper wrapper1 = new UsersPOSTWrapper(1,'Ammmy','ammmy@gmail.com','female','inactive');
            String jsonString = JSON.serialize(wrapper1);
            system.debug('request JSON: '+jsonString);
            request.setBody(jsonString);
            
            response = http.send(request);
            system.debug('Response Code : '+response.getStatusCode());

        }
}
