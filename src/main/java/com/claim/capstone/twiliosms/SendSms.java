package com.claim.capstone.twiliosms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class SendSms {
	
	public static class MessageDetails {
        public List<String> numbers;
        public String message;
    }

    @Value("${phoneNumber}")
    private String myTwilioPhoneNumber;
    
   // @Autowired
   // private OrderServiceImpl orderService;
    

    @Autowired
    public SendSms(
        @Value("${twilioAccountSid}") String twilioAccountSid,
        @Value("${twilioAuthToken}") String twilioAuthToken) {
        Twilio.init(twilioAccountSid, twilioAuthToken);
    }

    @PostMapping("/send-messages")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public void sendMessages(@RequestBody MessageDetails messageDetails) {

        messageDetails.numbers.stream().forEach( phone -> {
            Message message = Message.creator(
            	new PhoneNumber(phone),
                new PhoneNumber(myTwilioPhoneNumber),
                messageDetails.message).create();
            System.out.println("Sent message w/ sid: " + message.getSid());
        });
    }
	
	
	
}