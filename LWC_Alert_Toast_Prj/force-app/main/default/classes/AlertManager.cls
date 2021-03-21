@RestResource(urlMapping='/getAlerts/*')

global with sharing class AlertManager {

    @HttpPost
    global static JsonResponse getAlerts() {

        /**
         * Calls all alert implementations.
         * List<Alert> returnList, alerts;
         * 
         * if(customSetting) {
         *  alerts = AlertFactoryImplementation.getAlerts();
         *  ForEach alert : alerts
         *      add alert to returnList
         * }
         * 
         * ...
         * 
         * return returnList;
         */

         return new JsonResponse(false, 'getAllAlerts not implemented.');
    }

    global class JsonResponse{
        Boolean success;
        string message;
        List<Alert> Alerts;

        public JsonResponse(Boolean newSuccess, string newMessage){
            success = newSuccess;
            message = newMessage;
            Alerts  = new list<Alert>();
        }
    }

    global class Alert{
        string title;
        string message;
        string variant;

        public Alert(string newTitle, string newMessage, string newVariant){
            title   = newTitle;
            message = newMessage;
            variant = newVariant;
        }
    }
}
