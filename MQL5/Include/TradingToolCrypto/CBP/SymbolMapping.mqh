#property copyright "Copyright 2020, TradingToolCrypto Corp"
#property link "https://github.com/TradingToolCrypto"

input bool   AutoSymbolMapping = true;
input string SymbolMapping_Separator = ".";
input string SymbolMapping_Add = "T";



input group "MANUAL SYMBOL MAPPING"
input string MT5_Symbol_1 = "BTCUSD.b2b";
input string EXC_Symbol_1 = "BTCUSDT";

input string MT5_Symbol_2 = "";
input string EXC_Symbol_2 = "";

input string MT5_Symbol_3 = "";
input string EXC_Symbol_3 = "";

input string MT5_Symbol_4 = "";
input string EXC_Symbol_4 = "";

input string MT5_Symbol_5 = "";
input string EXC_Symbol_5 = "";

input string MT5_Symbol_6 = "";
input string EXC_Symbol_6 = "";

input string MT5_Symbol_7 = "";
input string EXC_Symbol_7 = "";

input string MT5_Symbol_8 = "";
input string EXC_Symbol_8 = "";

input string MT5_Symbol_9 = "";
input string EXC_Symbol_9 = "";

input string MT5_Symbol_10 = "";
input string EXC_Symbol_10 = "";

string SymbolMapping(string mt5_symbol){

   if(AutoSymbolMapping){
      /*
         BTCUSDT.binance
         BTCUSD.b2b
      */
      string sep="";              // A separator as a character
      sep = SymbolMapping_Separator;
      ushort u_sep;                  // The code of the separator character
      string result[];               // An array to get strings
      u_sep=StringGetCharacter(sep,0);
      int k=StringSplit(mt5_symbol,u_sep,result);
      string value = result[0];
      value += SymbolMapping_Add;
      return(value);
   }
   
   if(mt5_symbol == MT5_Symbol_1){
      return(EXC_Symbol_1);
   }
   if(mt5_symbol == MT5_Symbol_2){
      return(EXC_Symbol_2);
   }
   if(mt5_symbol == MT5_Symbol_3){
      return(EXC_Symbol_3);
   }
   if(mt5_symbol == MT5_Symbol_4){
      return(EXC_Symbol_4);
   }
   if(mt5_symbol == MT5_Symbol_5){
      return(EXC_Symbol_5);
   }
   if(mt5_symbol == MT5_Symbol_6){
      return(EXC_Symbol_6);
   }
   if(mt5_symbol == MT5_Symbol_7){
      return(EXC_Symbol_7);
   }
   if(mt5_symbol == MT5_Symbol_8){
      return(EXC_Symbol_8);
   }
   if(mt5_symbol == MT5_Symbol_9){
      return(EXC_Symbol_9);
   }
   if(mt5_symbol == MT5_Symbol_10){
      return(EXC_Symbol_10);
   }

   return(mt5_symbol);
}

int SymbolVolumePrecision(double value){

   /*
   
   */
   if(value == 0.00000001){
   return(8);
   }
   if(value == 0.0000001){
   return(7);
   }
   if(value == 0.000001){
   return(6);
   }
   if(value == 0.00001){
   return(5);
   }
   if(value == 0.0001){
   return(4);
   }
   if(value == 0.001){
   return(3);
   }
   if(value == 0.01){
   return(2);
   }
   if(value == 0.1){
   return(1);
   }
   if(value >= 1){
   return(0);
   }
   return(0);
}

//+------------------------------------------------------------------+
string convert_int_to_OrderType(int inputValue)
{
  if (0 == inputValue)
  {
    return ("BUY");
  }
  if (1 == inputValue)
  {
    return ("SELL");
  }
  if (2 == inputValue)
  {
    return ("BUYLIMIT");
  }
  if (3 == inputValue)
  {
    return ("SELLLIMIT");
  }
  if (4 == inputValue)
  {
    return ("BUYSTOP");
  }
  if (5 == inputValue)
  {
    return ("SELLSTOP");
  }

  return ("UNKNOWN ORDER TYPE: " + IntegerToString(inputValue));
}
