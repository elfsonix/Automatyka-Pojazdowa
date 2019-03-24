
channel =  canChannel('Vector', 'CANcardXL 1', 2);
channel.Database = canDatabase('Radar_2.dbc');

filterAllowOnly(channel, [hex2dec('600'):hex2dec('63F')], 'Standard');
start(channel);


while(1)
    message = receive(channel,Inf);
    
    for i = 1: size(message,2)
         polarplot(message(i).Signals.CAN_TX_DETECT_ANGLE*pi/180, message(i).Signals.CAN_TX_DETECT_RANGE, 'o');
         hold on
         %rlim([0 20])
        
    end
    pause(0.2);
    hold off;
end

    
