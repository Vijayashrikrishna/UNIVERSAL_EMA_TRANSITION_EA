//+------------------------------------------------------------------+
//| Universal_EMA_Transition_EA                                      |
//| Version : 1.0                                                    |
//| Module  : Main Expert Advisor                                    |
//| Author  : Vijayashri Ramesh & OpenAI                             |
//+------------------------------------------------------------------+
#property copyright "Vijayashri Ramesh"
#property version   "1.00"
#property strict

//==================================================================//
// Include Project Modules                                          //
//==================================================================//

#include "../Includes/EA_Config.mqh"
#include "../Includes/EA_Common.mqh"
#include "../Includes/EA_InstrumentManager.mqh"
#include "../Includes/EA_Logger.mqh"
#include "../Includes/EA_RiskManager.mqh"
#include "../Includes/EA_OrderManager.mqh"
#include "../Includes/EA_TradeManager.mqh"

//==================================================================//
// Expert Initialization                                            //
//==================================================================//

int OnInit()
{
   Print("====================================================");
   Print("Universal EMA Transition EA v1.0");
   Print("Initialization Started...");
   Print("====================================================");

   return(INIT_SUCCEEDED);
}

//==================================================================//
// Expert Deinitialization                                          //
//==================================================================//

void OnDeinit(const int reason)
{
   Print("Universal EMA Transition EA stopped.");
}

//==================================================================//
// Expert Tick                                                      //
//==================================================================//

void OnTick()
{
   // Trading logic will be implemented in future milestones.
}