clear;clc;close all;
UCI_data = [];
inputData = load('new 1.log').';
ConfigByte1 = 0;
ConfigByte2 = 0;

ConfigByte3 = 0;
ConfigByte4 = 0;
for m = 1:length(inputData)
    ConfigByte1 =  bitand(inputData(m),255);
    if(ConfigByte1 == 225)
        ConfigByte1 = -31;
    end
    ConfigByte2 =  bitand(bitshift(inputData(m),-8),255);
    if(ConfigByte2 == 225)
        ConfigByte2 = -31;
    end
    ConfigByte3 =  bitand(bitshift(inputData(m),-16),255);
    if(ConfigByte3 == 225)
        ConfigByte3 = -31;
    end
    ConfigByte4 =  bitand(bitshift(inputData(m),-24),255);
    if(ConfigByte4 == 225)
        ConfigByte4 = -31;
    end
    UCI_data = [UCI_data ConfigByte1 ConfigByte2 ConfigByte3 ConfigByte4];      
end
UCI_data(length(inputData)*4-1:end) = [];
  dlmwrite('.\Save_g_data.txt',UCI_data,'delimiter','\n','precision',10);
UCI_data 