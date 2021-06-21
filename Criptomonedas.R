# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Web Scraping Criptomonedas
#
# From: https://es-us.finanzas.yahoo.com/
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# --------------------------------------------------------------------------------------- #

# Librerias

library(corrplot) 
library(PerformanceAnalytics) 
library(quantmod)
library(highcharter)
library(tidyr)
library(miscset)
library(ggplot2)
library(corrplot) 
library(GGally)
library(readr)  
library(dplyr)  
library(crayon) 
library(modeest)
library(plotly)

# --------------------------------------------------------------------------------------- #

# Importar Criptos

BTC=getSymbols("BTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ETH=getSymbols("ETH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BNB=getSymbols("BNB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DOGE=getSymbols("DOGE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XRP=getSymbols("XRP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
USDT=getSymbols("USDT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ADA=getSymbols("ADA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LTC=getSymbols("LTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LINK=getSymbols("LINK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BCH=getSymbols("BCH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
USDC=getSymbols("USDC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VET=getSymbols("VET-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XLM=getSymbols("XLM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
THETA=getSymbols("THETA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FIL=getSymbols("FIL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TRX=getSymbols("TRX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ETC=getSymbols("ETC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NEO=getSymbols("NEO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XMR=getSymbols("XMR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EOS=getSymbols("EOS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BSV=getSymbols("BSV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AAVE=getSymbols("AAVE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MKR=getSymbols("MKR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MIOTA=getSymbols("MIOTA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XTZ=getSymbols("XTZ-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CRO=getSymbols("CRO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AVAX=getSymbols("AVAX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DASH=getSymbols("DASH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ALGO=getSymbols("ALGO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WAVES=getSymbols("WAVES-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MATIC=getSymbols("MATIC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
COMP=getSymbols("COMP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KSM=getSymbols("KSM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EGLD=getSymbols("EGLD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZEC=getSymbols("ZEC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XEM=getSymbols("XEM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CHZ=getSymbols("CHZ-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DCR=getSymbols("DCR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HBAR=getSymbols("HBAR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZIL=getSymbols("ZIL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MANA=getSymbols("MANA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ENJ=getSymbols("ENJ-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DGB=getSymbols("DGB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTG=getSymbols("BTG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SNX=getSymbols("SNX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
YFI=getSymbols("YFI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TFUEL=getSymbols("TFUEL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BAT=getSymbols("BAT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SC=getSymbols("SC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SUSHI=getSymbols("SUSHI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ONT=getSymbols("ONT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
UMA=getSymbols("UMA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RVN=getSymbols("RVN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CEL=getSymbols("CEL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
QTUM=getSymbols("QTUM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ICX=getSymbols("ICX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZRX=getSymbols("ZRX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OMG=getSymbols("OMG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BNT=getSymbols("BNT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZEN=getSymbols("ZEN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NANO=getSymbols("NANO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CELO=getSymbols("CELO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ANKR=getSymbols("ANKR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
REV=getSymbols("REV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
IOST=getSymbols("IOST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TUSD=getSymbols("TUSD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VGX=getSymbols("VGX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AR=getSymbols("AR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CRV=getSymbols("CRV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XVG=getSymbols("XVG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LSK=getSymbols("LSK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CKB=getSymbols("CKB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LRC=getSymbols("LRC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KNC=getSymbols("KNC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ABBC=getSymbols("ABBC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SNT=getSymbols("SNT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VTHO=getSymbols("VTHO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BCD=getSymbols("BCD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SRM=getSymbols("SRM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
STORJ=getSymbols("STORJ-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
IOTX=getSymbols("IOTX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
QNT=getSymbols("QNT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GLM=getSymbols("GLM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
REP=getSymbols("REP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FET=getSymbols("FET-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EWT=getSymbols("EWT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FUN=getSymbols("FUN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WAXP=getSymbols("WAXP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NKN=getSymbols("NKN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MAID=getSymbols("MAID-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BAND=getSymbols("BAND-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MCO=getSymbols("MCO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
STRAX=getSymbols("STRAX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SYS=getSymbols("SYS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RLC=getSymbols("RLC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KIN=getSymbols("KIN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTS=getSymbols("BTS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GNO=getSymbols("GNO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CVC=getSymbols("CVC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ARDR=getSymbols("ARDR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KAVA=getSymbols("KAVA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ANT=getSymbols("ANT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MED=getSymbols("MED-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KMD=getSymbols("KMD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
STEEM=getSymbols("STEEM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NU=getSymbols("NU-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XHV=getSymbols("XHV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SNM=getSymbols("SNM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VLX=getSymbols("VLX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HNS=getSymbols("HNS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WAN=getSymbols("WAN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTM=getSymbols("BTM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AVA=getSymbols("AVA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ARK=getSymbols("ARK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MTL=getSymbols("MTL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
META=getSymbols("META-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PPT=getSymbols("PPT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HIVE=getSymbols("HIVE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
COTI=getSymbols("COTI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OXT=getSymbols("OXT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HEX=getSymbols("HEX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CCXX=getSymbols("CCXX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DFI=getSymbols("DFI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XWC=getSymbols("XWC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ARRR=getSymbols("ARRR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XDC=getSymbols("XDC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MIR=getSymbols("MIR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ETN=getSymbols("ETN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ATRI=getSymbols("ATRI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HNC=getSymbols("HNC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TWT=getSymbols("TWT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
COTI=getSymbols("COTI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TOMO=getSymbols("TOMO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RDD=getSymbols("RDD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MLN=getSymbols("MLN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
IRIS=getSymbols("IRIS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MARO=getSymbols("MARO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
REV=getSymbols("REV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DNT=getSymbols("DNT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BCN=getSymbols("BCN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PAC=getSymbols("PAC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CRU=getSymbols("CRU-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MONA=getSymbols("MONA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AION=getSymbols("AION-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ELA=getSymbols("ELA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NYE=getSymbols("NYE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DIVI=getSymbols("DIVI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FIRO=getSymbols("FIRO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GAS=getSymbols("GAS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PHA=getSymbols("PHA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ADX=getSymbols("ADX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SAPP=getSymbols("SAPP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NRG=getSymbols("NRG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VRA=getSymbols("VRA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CSC=getSymbols("CSC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BEAM=getSymbols("BEAM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EDG=getSymbols("EDG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AE=getSymbols("AE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FSN=getSymbols("FSN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MWC=getSymbols("MWC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KDA=getSymbols("KDA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ERG=getSymbols("ERG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TT=getSymbols("TT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WTC=getSymbols("WTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SRK=getSymbols("SRK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PIVX=getSymbols("PIVX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
APL=getSymbols("APL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NULS=getSymbols("NULS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NXS=getSymbols("NXS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XNC=getSymbols("XNC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZNN=getSymbols("ZNN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GRS=getSymbols("GRS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SERO=getSymbols("SERO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WOZX=getSymbols("WOZX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EMC2=getSymbols("EMC2-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WICC=getSymbols("WICC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DAG=getSymbols("DAG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SOLVE=getSymbols("SOLVE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LBC=getSymbols("LBC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CTXC=getSymbols("CTXC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VTC=getSymbols("VTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VITE=getSymbols("VITE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HC=getSymbols("HC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PAI=getSymbols("PAI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VSYS=getSymbols("VSYS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RBTC=getSymbols("RBTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MHC=getSymbols("MHC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AXEL=getSymbols("AXEL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PCX=getSymbols("PCX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DERO=getSymbols("DERO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FIO=getSymbols("FIO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NIM=getSymbols("NIM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GRN=getSymbols("GRN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MASS=getSymbols("MASS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GXC=getSymbols("GXC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NXT=getSymbols("NXT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SKY=getSymbols("SKY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DGD=getSymbols("DGD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OBSR=getSymbols("OBSR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BDX=getSymbols("BDX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BIP=getSymbols("BIP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WABI=getSymbols("WABI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NEBL=getSymbols("NEBL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NAS=getSymbols("NAS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GRIN=getSymbols("GRIN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GO=getSymbols("GO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DCN=getSymbols("DCN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GBYTE=getSymbols("GBYTE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SBD=getSymbols("SBD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SALT=getSymbols("SALT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CET=getSymbols("CET-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
KRT=getSymbols("KRT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NAV=getSymbols("NAV-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VERI=getSymbols("VERI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XSN=getSymbols("XSN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PZM=getSymbols("PZM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
QASH=getSymbols("QASH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PI=getSymbols("PI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AEON=getSymbols("AEON-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VIA=getSymbols("VIA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GAME=getSymbols("GAME-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XDN=getSymbols("XDN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VITAE=getSymbols("VITAE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
QRL=getSymbols("QRL-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FCT=getSymbols("FCT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CUT=getSymbols("CUT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NMC=getSymbols("NMC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DMCH=getSymbols("DMCH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RINGX=getSymbols("RINGX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BHD=getSymbols("BHD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ETP=getSymbols("ETP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZANO=getSymbols("ZANO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PPC=getSymbols("PPC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WGR=getSymbols("WGR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BLOCK=getSymbols("BLOCK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PART=getSymbols("PART-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BURST=getSymbols("BURST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DYN=getSymbols("DYN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SMART=getSymbols("SMART-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
POA=getSymbols("POA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HPB=getSymbols("HPB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BEPRO=getSymbols("BEPRO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FCT=getSymbols("FCT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MAN=getSymbols("MAN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ZYN=getSymbols("ZYN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PAY=getSymbols("PAY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
UBQ=getSymbols("UBQ-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ACT=getSymbols("ACT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RSTR=getSymbols("RSTR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TRUE=getSymbols("TRUE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ADK=getSymbols("ADK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NLG=getSymbols("NLG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NIX=getSymbols("NIX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HTML=getSymbols("HTML-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BPS=getSymbols("BPS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NVT=getSymbols("NVT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MRX=getSymbols("MRX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
YOYOW=getSymbols("YOYOW-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ACH=getSymbols("ACH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CHI=getSymbols("CHI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SNGLS=getSymbols("SNGLS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TERA=getSymbols("TERA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PLC=getSymbols("PLC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SFT=getSymbols("SFT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MINT=getSymbols("MINT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XLT=getSymbols("XLT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XMY=getSymbols("XMY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BHP=getSymbols("BHP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FLO=getSymbols("FLO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AMB=getSymbols("AMB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTC2=getSymbols("BTC2-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GLEEC=getSymbols("GLEEC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XMC=getSymbols("XMC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NYZO=getSymbols("NYZO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BLK=getSymbols("BLK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FTC=getSymbols("FTC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FO=getSymbols("FO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
INT=getSymbols("INT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
IDNA=getSymbols("IDNA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DMD=getSymbols("DMD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
WINGS=getSymbols("WINGS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PHR=getSymbols("PHR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DTEP=getSymbols("DTEP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LCC=getSymbols("LCC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GHOST=getSymbols("GHOST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XST=getSymbols("XST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MONA=getSymbols("MONA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MIR=getSymbols("MIR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OTO=getSymbols("OTO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DIME=getSymbols("DIME-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AYA=getSymbols("AYA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HTDF=getSymbols("HTDF-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VEX=getSymbols("VEX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
INSTAR=getSymbols("INSTAR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ILC=getSymbols("ILC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XBY=getSymbols("XBY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
USNBT=getSymbols("USNBT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SCP=getSymbols("SCP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CRW=getSymbols("CRW-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XRC=getSymbols("XRC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GRC=getSymbols("GRC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FAIR=getSymbols("FAIR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
IOC=getSymbols("IOC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BCA=getSymbols("BCA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CURE=getSymbols("CURE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FLASH=getSymbols("FLASH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HYC=getSymbols("HYC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VIN=getSymbols("VIN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SUB=getSymbols("SUB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
QRK=getSymbols("QRK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BPC=getSymbols("BPC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CHI=getSymbols("CHI-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XAS=getSymbols("XAS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MGO=getSymbols("MGO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PMEER=getSymbols("PMEER-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
GHOST=getSymbols("GHOST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OWC=getSymbols("OWC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
POLIS=getSymbols("POLIS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MBC=getSymbols("MBC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ERK=getSymbols("ERK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DDK=getSymbols("DDK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
EDG=getSymbols("EDG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NPC=getSymbols("NPC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
HSS=getSymbols("HSS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
OURO=getSymbols("OURO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
COMP=getSymbols("COMP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FRST=getSymbols("FRST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ATB=getSymbols("ATB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DMD=getSymbols("DMD-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FAIR=getSymbols("FAIR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTS=getSymbols("BTS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BST=getSymbols("BST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BCA=getSymbols("BCA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CCA=getSymbols("CCA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
UNO=getSymbols("UNO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FAIR=getSymbols("FAIR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SALT=getSymbols("SALT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
PPC=getSymbols("PPC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LRG=getSymbols("LRG-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
TUBE=getSymbols("TUBE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
JDC=getSymbols("JDC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MIDAS=getSymbols("MIDAS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ALIAS=getSymbols("ALIAS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BTX=getSymbols("BTX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
UNO=getSymbols("UNO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
AIB=getSymbols("AIB-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SPHR=getSymbols("SPHR-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
XCP=getSymbols("XCP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
LKK=getSymbols("LKK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ECC=getSymbols("ECC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ANT=getSymbols("ANT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
VBK=getSymbols("VBK-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CURE=getSymbols("CURE-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SLS=getSymbols("SLS-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FLO=getSymbols("FLO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
COLX=getSymbols("COLX-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
NLC2=getSymbols("NLC2-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
FLASH=getSymbols("FLASH-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BST=getSymbols("BST-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
ECA=getSymbols("ECA-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MINT=getSymbols("MINT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DCY=getSymbols("DCY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
CLAM=getSymbols("CLAM-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BONO=getSymbols("BONO-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SHIFT=getSymbols("SHIFT-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
DUN=getSymbols("DUN-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
RBY=getSymbols("RBY-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MOAC=getSymbols("MOAC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
BRC=getSymbols("BRC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
SAPP=getSymbols("SAPP-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")
MBC=getSymbols("MBC-USD" , src = 'yahoo', auto.assign = F, from = "2001-01-02", to = Sys.Date(), periodicity = "daily")


# --------------------------------------------------------------------------------------- #

# Se Crean Data Frames

BTC = as.data.frame(BTC)
ETH = as.data.frame(ETH)
BNB = as.data.frame(BNB)
DOGE = as.data.frame(DOGE)
XRP = as.data.frame(XRP)
USDT = as.data.frame(USDT)
ADA = as.data.frame(ADA)
LTC = as.data.frame(LTC)
LINK = as.data.frame(LINK)
BCH = as.data.frame(BCH)
USDC = as.data.frame(USDC)
VET = as.data.frame(VET)
XLM = as.data.frame(XLM)
THETA = as.data.frame(THETA)
FIL = as.data.frame(FIL)
TRX = as.data.frame(TRX)
ETC = as.data.frame(ETC)
NEO = as.data.frame(NEO)
XMR = as.data.frame(XMR)
EOS = as.data.frame(EOS)
BSV = as.data.frame(BSV)
AAVE = as.data.frame(AAVE)
MKR = as.data.frame(MKR)
MIOTA = as.data.frame(MIOTA)
XTZ = as.data.frame(XTZ)
CRO = as.data.frame(CRO)
AVAX = as.data.frame(AVAX)
DASH = as.data.frame(DASH)
ALGO = as.data.frame(ALGO)
WAVES = as.data.frame(WAVES)
MATIC = as.data.frame(MATIC)
COMP = as.data.frame(COMP)
KSM = as.data.frame(KSM)
EGLD = as.data.frame(EGLD)
ZEC = as.data.frame(ZEC)
XEM = as.data.frame(XEM)
CHZ = as.data.frame(CHZ)
DCR = as.data.frame(DCR)
HBAR = as.data.frame(HBAR)
ZIL = as.data.frame(ZIL)
MANA = as.data.frame(MANA)
ENJ = as.data.frame(ENJ)
DGB = as.data.frame(DGB)
BTG = as.data.frame(BTG)
SNX = as.data.frame(SNX)
YFI = as.data.frame(YFI)
TFUEL = as.data.frame(TFUEL)
BAT = as.data.frame(BAT)
SC = as.data.frame(SC)
SUSHI = as.data.frame(SUSHI)
ONT = as.data.frame(ONT)
UMA = as.data.frame(UMA)
RVN = as.data.frame(RVN)
CEL = as.data.frame(CEL)
QTUM = as.data.frame(QTUM)
ICX = as.data.frame(ICX)
ZRX = as.data.frame(ZRX)
OMG = as.data.frame(OMG)
BNT = as.data.frame(BNT)
ZEN = as.data.frame(ZEN)
NANO = as.data.frame(NANO)
CELO = as.data.frame(CELO)
ANKR = as.data.frame(ANKR)
REV = as.data.frame(REV)
IOST = as.data.frame(IOST)
TUSD = as.data.frame(TUSD)
VGX = as.data.frame(VGX)
AR = as.data.frame(AR)
CRV = as.data.frame(CRV)
XVG = as.data.frame(XVG)
LSK = as.data.frame(LSK)
CKB = as.data.frame(CKB)
LRC = as.data.frame(LRC)
KNC = as.data.frame(KNC)
ABBC = as.data.frame(ABBC)
SNT = as.data.frame(SNT)
VTHO = as.data.frame(VTHO)
BCD = as.data.frame(BCD)
SRM = as.data.frame(SRM)
STORJ = as.data.frame(STORJ)
IOTX = as.data.frame(IOTX)
QNT = as.data.frame(QNT)
GLM = as.data.frame(GLM)
REP = as.data.frame(REP)
FET = as.data.frame(FET)
EWT = as.data.frame(EWT)
FUN = as.data.frame(FUN)
WAXP = as.data.frame(WAXP)
NKN = as.data.frame(NKN)
MAID = as.data.frame(MAID)
BAND = as.data.frame(BAND)
MCO = as.data.frame(MCO)
STRAX = as.data.frame(STRAX)
SYS = as.data.frame(SYS)
RLC = as.data.frame(RLC)
KIN = as.data.frame(KIN)
BTS = as.data.frame(BTS)
GNO = as.data.frame(GNO)
CVC = as.data.frame(CVC)
ARDR = as.data.frame(ARDR)
KAVA = as.data.frame(KAVA)
ANT = as.data.frame(ANT)
MED = as.data.frame(MED)
KMD = as.data.frame(KMD)
STEEM = as.data.frame(STEEM)
NU = as.data.frame(NU)
XHV = as.data.frame(XHV)
SNM = as.data.frame(SNM)
VLX = as.data.frame(VLX)
HNS = as.data.frame(HNS)
WAN = as.data.frame(WAN)
BTM = as.data.frame(BTM)
AVA = as.data.frame(AVA)
ARK = as.data.frame(ARK)
MTL = as.data.frame(MTL)
META = as.data.frame(META)
PPT = as.data.frame(PPT)
HIVE = as.data.frame(HIVE)
COTI = as.data.frame(COTI)
OXT = as.data.frame(OXT)
HEX = as.data.frame(HEX)
CCXX = as.data.frame(CCXX)
DFI = as.data.frame(DFI)
XWC = as.data.frame(XWC)
ARRR = as.data.frame(ARRR)
XDC = as.data.frame(XDC)
MIR = as.data.frame(MIR)
ETN = as.data.frame(ETN)
ATRI = as.data.frame(ATRI)
HNC = as.data.frame(HNC)
TWT = as.data.frame(TWT)
COTI = as.data.frame(COTI)
TOMO = as.data.frame(TOMO)
RDD = as.data.frame(RDD)
MLN = as.data.frame(MLN)
IRIS = as.data.frame(IRIS)
MARO = as.data.frame(MARO)
REV = as.data.frame(REV)
DNT = as.data.frame(DNT)
BCN = as.data.frame(BCN)
PAC = as.data.frame(PAC)
CRU = as.data.frame(CRU)
MONA = as.data.frame(MONA)
AION = as.data.frame(AION)
ELA = as.data.frame(ELA)
NYE = as.data.frame(NYE)
DIVI = as.data.frame(DIVI)
FIRO = as.data.frame(FIRO)
GAS = as.data.frame(GAS)
PHA = as.data.frame(PHA)
ADX = as.data.frame(ADX)
SAPP = as.data.frame(SAPP)
NRG = as.data.frame(NRG)
VRA = as.data.frame(VRA)
CSC = as.data.frame(CSC)
BEAM = as.data.frame(BEAM)
EDG = as.data.frame(EDG)
AE = as.data.frame(AE)
FSN = as.data.frame(FSN)
MWC = as.data.frame(MWC)
KDA = as.data.frame(KDA)
ERG = as.data.frame(ERG)
TT = as.data.frame(TT)
WTC = as.data.frame(WTC)
SRK = as.data.frame(SRK)
PIVX = as.data.frame(PIVX)
APL = as.data.frame(APL)
NULS = as.data.frame(NULS)
NXS = as.data.frame(NXS)
XNC = as.data.frame(XNC)
ZNN = as.data.frame(ZNN)
GRS = as.data.frame(GRS)
SERO = as.data.frame(SERO)
WOZX = as.data.frame(WOZX)
EMC2 = as.data.frame(EMC2)
WICC = as.data.frame(WICC)
DAG = as.data.frame(DAG)
SOLVE = as.data.frame(SOLVE)
LBC = as.data.frame(LBC)
CTXC = as.data.frame(CTXC)
VTC = as.data.frame(VTC)
VITE = as.data.frame(VITE)
HC = as.data.frame(HC)
PAI = as.data.frame(PAI)
VSYS = as.data.frame(VSYS)
RBTC = as.data.frame(RBTC)
MHC = as.data.frame(MHC)
AXEL = as.data.frame(AXEL)
PCX = as.data.frame(PCX)
DERO = as.data.frame(DERO)
FIO = as.data.frame(FIO)
NIM = as.data.frame(NIM)
GRN = as.data.frame(GRN)
MASS = as.data.frame(MASS)
GXC = as.data.frame(GXC)
NXT = as.data.frame(NXT)
SKY = as.data.frame(SKY)
DGD = as.data.frame(DGD)
OBSR = as.data.frame(OBSR)
BDX = as.data.frame(BDX)
BIP = as.data.frame(BIP)
WABI = as.data.frame(WABI)
NEBL = as.data.frame(NEBL)
NAS = as.data.frame(NAS)
GRIN = as.data.frame(GRIN)
GO = as.data.frame(GO)
DCN = as.data.frame(DCN)
GBYTE = as.data.frame(GBYTE)
SBD = as.data.frame(SBD)
SALT = as.data.frame(SALT)
CET = as.data.frame(CET)
KRT = as.data.frame(KRT)
NAV = as.data.frame(NAV)
VERI = as.data.frame(VERI)
XSN = as.data.frame(XSN)
PZM = as.data.frame(PZM)
QASH = as.data.frame(QASH)
PI = as.data.frame(PI)
AEON = as.data.frame(AEON)
VIA = as.data.frame(VIA)
GAME = as.data.frame(GAME)
XDN = as.data.frame(XDN)
VITAE = as.data.frame(VITAE)
QRL = as.data.frame(QRL)
FCT = as.data.frame(FCT)
CUT = as.data.frame(CUT)
NMC = as.data.frame(NMC)
DMCH = as.data.frame(DMCH)
RINGX = as.data.frame(RINGX)
BHD = as.data.frame(BHD)
ETP = as.data.frame(ETP)
ZANO = as.data.frame(ZANO)
PPC = as.data.frame(PPC)
WGR = as.data.frame(WGR)
BLOCK = as.data.frame(BLOCK)
PART = as.data.frame(PART)
BURST = as.data.frame(BURST)
DYN = as.data.frame(DYN)
SMART = as.data.frame(SMART)
POA = as.data.frame(POA)
HPB = as.data.frame(HPB)
BEPRO = as.data.frame(BEPRO)
FCT = as.data.frame(FCT)
MAN = as.data.frame(MAN)
ZYN = as.data.frame(ZYN)
PAY = as.data.frame(PAY)
UBQ = as.data.frame(UBQ)
ACT = as.data.frame(ACT)
RSTR = as.data.frame(RSTR)
TRUE = as.data.frame(TRUE)
ADK = as.data.frame(ADK)
NLG = as.data.frame(NLG)
NIX = as.data.frame(NIX)
HTML = as.data.frame(HTML)
BPS = as.data.frame(BPS)
NVT = as.data.frame(NVT)
MRX = as.data.frame(MRX)
YOYOW = as.data.frame(YOYOW)
ACH = as.data.frame(ACH)
CHI = as.data.frame(CHI)
SNGLS = as.data.frame(SNGLS)
TERA = as.data.frame(TERA)
PLC = as.data.frame(PLC)
SFT = as.data.frame(SFT)
MINT = as.data.frame(MINT)
XLT = as.data.frame(XLT)
XMY = as.data.frame(XMY)
BHP = as.data.frame(BHP)
FLO = as.data.frame(FLO)
AMB = as.data.frame(AMB)
BTC2 = as.data.frame(BTC2)
GLEEC = as.data.frame(GLEEC)
XMC = as.data.frame(XMC)
NYZO = as.data.frame(NYZO)
BLK = as.data.frame(BLK)
FTC = as.data.frame(FTC)
FO = as.data.frame(FO)
INT = as.data.frame(INT)
IDNA = as.data.frame(IDNA)
DMD = as.data.frame(DMD)
WINGS = as.data.frame(WINGS)
PHR = as.data.frame(PHR)
DTEP = as.data.frame(DTEP)
LCC = as.data.frame(LCC)
GHOST = as.data.frame(GHOST)
XST = as.data.frame(XST)
MONA = as.data.frame(MONA)
MIR = as.data.frame(MIR)
OTO = as.data.frame(OTO)
DIME = as.data.frame(DIME)
AYA = as.data.frame(AYA)
HTDF = as.data.frame(HTDF)
VEX = as.data.frame(VEX)
INSTAR = as.data.frame(INSTAR)
ILC = as.data.frame(ILC)
XBY = as.data.frame(XBY)
USNBT = as.data.frame(USNBT)
SCP = as.data.frame(SCP)
CRW = as.data.frame(CRW)
XRC = as.data.frame(XRC)
GRC = as.data.frame(GRC)
FAIR = as.data.frame(FAIR)
IOC = as.data.frame(IOC)
BCA = as.data.frame(BCA)
CURE = as.data.frame(CURE)
FLASH = as.data.frame(FLASH)
HYC = as.data.frame(HYC)
VIN = as.data.frame(VIN)
SUB = as.data.frame(SUB)
QRK = as.data.frame(QRK)
BPC = as.data.frame(BPC)
CHI = as.data.frame(CHI)
XAS = as.data.frame(XAS)
MGO = as.data.frame(MGO)
PMEER = as.data.frame(PMEER)
GHOST = as.data.frame(GHOST)
OWC = as.data.frame(OWC)
POLIS = as.data.frame(POLIS)
MBC = as.data.frame(MBC)
ERK = as.data.frame(ERK)
DDK = as.data.frame(DDK)
EDG = as.data.frame(EDG)
NPC = as.data.frame(NPC)
HSS = as.data.frame(HSS)
OURO = as.data.frame(OURO)
COMP = as.data.frame(COMP)
FRST = as.data.frame(FRST)
ATB = as.data.frame(ATB)
DMD = as.data.frame(DMD)
FAIR = as.data.frame(FAIR)
BTS = as.data.frame(BTS)
BST = as.data.frame(BST)
BCA = as.data.frame(BCA)
CCA = as.data.frame(CCA)
UNO = as.data.frame(UNO)
FAIR = as.data.frame(FAIR)
SALT = as.data.frame(SALT)
PPC = as.data.frame(PPC)
LRG = as.data.frame(LRG)
TUBE = as.data.frame(TUBE)
JDC = as.data.frame(JDC)
MIDAS = as.data.frame(MIDAS)
ALIAS = as.data.frame(ALIAS)
BTX = as.data.frame(BTX)
UNO = as.data.frame(UNO)
AIB = as.data.frame(AIB)
SPHR = as.data.frame(SPHR)
XCP = as.data.frame(XCP)
LKK = as.data.frame(LKK)
ECC = as.data.frame(ECC)
ANT = as.data.frame(ANT)
VBK = as.data.frame(VBK)
CURE = as.data.frame(CURE)
SLS = as.data.frame(SLS)
FLO = as.data.frame(FLO)
COLX = as.data.frame(COLX)
NLC2 = as.data.frame(NLC2)
FLASH = as.data.frame(FLASH)
BST = as.data.frame(BST)
ECA = as.data.frame(ECA)
MINT = as.data.frame(MINT)
DCY = as.data.frame(DCY)
CLAM = as.data.frame(CLAM)
BONO = as.data.frame(BONO)
SHIFT = as.data.frame(SHIFT)
DUN = as.data.frame(DUN)
RBY = as.data.frame(RBY)
MOAC = as.data.frame(MOAC)
BRC = as.data.frame(BRC)
SAPP = as.data.frame(SAPP)
MBC = as.data.frame(MBC)

# --------------------------------------------------------------------------------------- #

# Se agregan las Fechas como variables

BTC$Fecha = row.names(BTC)
ETH$Fecha <- row.names(ETH)
BNB$Fecha <- row.names(BNB)
DOGE$Fecha <- row.names(DOGE)
XRP$Fecha <- row.names(XRP)
USDT$Fecha <- row.names(USDT)
ADA$Fecha <- row.names(ADA)
LTC$Fecha <- row.names(LTC)
LINK$Fecha <- row.names(LINK)
BCH$Fecha <- row.names(BCH)
USDC$Fecha <- row.names(USDC)
VET$Fecha <- row.names(VET)
XLM$Fecha <- row.names(XLM)
THETA$Fecha <- row.names(THETA)
FIL$Fecha <- row.names(FIL)
TRX$Fecha <- row.names(TRX)
ETC$Fecha <- row.names(ETC)
NEO$Fecha <- row.names(NEO)
XMR$Fecha <- row.names(XMR)
EOS$Fecha <- row.names(EOS)
BSV$Fecha <- row.names(BSV)
AAVE$Fecha <- row.names(AAVE)
MKR$Fecha <- row.names(MKR)
MIOTA$Fecha <- row.names(MIOTA)
XTZ$Fecha <- row.names(XTZ)
CRO$Fecha <- row.names(CRO)
AVAX$Fecha <- row.names(AVAX)
DASH$Fecha <- row.names(DASH)
ALGO$Fecha <- row.names(ALGO)
WAVES$Fecha <- row.names(WAVES)
MATIC$Fecha <- row.names(MATIC)
COMP$Fecha <- row.names(COMP)
KSM$Fecha <- row.names(KSM)
EGLD$Fecha <- row.names(EGLD)
ZEC$Fecha <- row.names(ZEC)
XEM$Fecha <- row.names(XEM)
CHZ$Fecha <- row.names(CHZ)
DCR$Fecha <- row.names(DCR)
HBAR$Fecha <- row.names(HBAR)
ZIL$Fecha <- row.names(ZIL)
MANA$Fecha <- row.names(MANA)
ENJ$Fecha <- row.names(ENJ)
DGB$Fecha <- row.names(DGB)
BTG$Fecha <- row.names(BTG)
SNX$Fecha <- row.names(SNX)
YFI$Fecha <- row.names(YFI)
TFUEL$Fecha <- row.names(TFUEL)
BAT$Fecha <- row.names(BAT)
SC$Fecha <- row.names(SC)
SUSHI$Fecha <- row.names(SUSHI)
ONT$Fecha <- row.names(ONT)
UMA$Fecha <- row.names(UMA)
RVN$Fecha <- row.names(RVN)
CEL$Fecha <- row.names(CEL)
QTUM$Fecha <- row.names(QTUM)
ICX$Fecha <- row.names(ICX)
ZRX$Fecha <- row.names(ZRX)
OMG$Fecha <- row.names(OMG)
BNT$Fecha <- row.names(BNT)
ZEN$Fecha <- row.names(ZEN)
NANO$Fecha <- row.names(NANO)
CELO$Fecha <- row.names(CELO)
ANKR$Fecha <- row.names(ANKR)
REV$Fecha <- row.names(REV)
IOST$Fecha <- row.names(IOST)
TUSD$Fecha <- row.names(TUSD)
VGX$Fecha <- row.names(VGX)
AR$Fecha <- row.names(AR)
CRV$Fecha <- row.names(CRV)
XVG$Fecha <- row.names(XVG)
LSK$Fecha <- row.names(LSK)
CKB$Fecha <- row.names(CKB)
LRC$Fecha <- row.names(LRC)
KNC$Fecha <- row.names(KNC)
ABBC$Fecha <- row.names(ABBC)
SNT$Fecha <- row.names(SNT)
VTHO$Fecha <- row.names(VTHO)
BCD$Fecha <- row.names(BCD)
SRM$Fecha <- row.names(SRM)
STORJ$Fecha <- row.names(STORJ)
IOTX$Fecha <- row.names(IOTX)
QNT$Fecha <- row.names(QNT)
GLM$Fecha <- row.names(GLM)
REP$Fecha <- row.names(REP)
FET$Fecha <- row.names(FET)
EWT$Fecha <- row.names(EWT)
FUN$Fecha <- row.names(FUN)
WAXP$Fecha <- row.names(WAXP)
NKN$Fecha <- row.names(NKN)
MAID$Fecha <- row.names(MAID)
BAND$Fecha <- row.names(BAND)
MCO$Fecha <- row.names(MCO)
STRAX$Fecha <- row.names(STRAX)
SYS$Fecha <- row.names(SYS)
RLC$Fecha <- row.names(RLC)
KIN$Fecha <- row.names(KIN)
BTS$Fecha <- row.names(BTS)
GNO$Fecha <- row.names(GNO)
CVC$Fecha <- row.names(CVC)
ARDR$Fecha <- row.names(ARDR)
KAVA$Fecha <- row.names(KAVA)
ANT$Fecha <- row.names(ANT)
MED$Fecha <- row.names(MED)
KMD$Fecha <- row.names(KMD)
STEEM$Fecha <- row.names(STEEM)
NU$Fecha <- row.names(NU)
XHV$Fecha <- row.names(XHV)
SNM$Fecha <- row.names(SNM)
VLX$Fecha <- row.names(VLX)
HNS$Fecha <- row.names(HNS)
WAN$Fecha <- row.names(WAN)
BTM$Fecha <- row.names(BTM)
AVA$Fecha <- row.names(AVA)
ARK$Fecha <- row.names(ARK)
MTL$Fecha <- row.names(MTL)
META$Fecha <- row.names(META)
PPT$Fecha <- row.names(PPT)
HIVE$Fecha <- row.names(HIVE)
COTI$Fecha <- row.names(COTI)
OXT$Fecha <- row.names(OXT)
HEX$Fecha <- row.names(HEX)
CCXX$Fecha <- row.names(CCXX)
DFI$Fecha <- row.names(DFI)
XWC$Fecha <- row.names(XWC)
ARRR$Fecha <- row.names(ARRR)
XDC$Fecha <- row.names(XDC)
MIR$Fecha <- row.names(MIR)
ETN$Fecha <- row.names(ETN)
ATRI$Fecha <- row.names(ATRI)
HNC$Fecha <- row.names(HNC)
TWT$Fecha <- row.names(TWT)
COTI$Fecha <- row.names(COTI)
TOMO$Fecha <- row.names(TOMO)
RDD$Fecha <- row.names(RDD)
MLN$Fecha <- row.names(MLN)
IRIS$Fecha <- row.names(IRIS)
MARO$Fecha <- row.names(MARO)
REV$Fecha <- row.names(REV)
DNT$Fecha <- row.names(DNT)
BCN$Fecha <- row.names(BCN)
PAC$Fecha <- row.names(PAC)
CRU$Fecha <- row.names(CRU)
MONA$Fecha <- row.names(MONA)
AION$Fecha <- row.names(AION)
ELA$Fecha <- row.names(ELA)
NYE$Fecha <- row.names(NYE)
DIVI$Fecha <- row.names(DIVI)
FIRO$Fecha <- row.names(FIRO)
GAS$Fecha <- row.names(GAS)
PHA$Fecha <- row.names(PHA)
ADX$Fecha <- row.names(ADX)
SAPP$Fecha <- row.names(SAPP)
NRG$Fecha <- row.names(NRG)
VRA$Fecha <- row.names(VRA)
CSC$Fecha <- row.names(CSC)
BEAM$Fecha <- row.names(BEAM)
EDG$Fecha <- row.names(EDG)
AE$Fecha <- row.names(AE)
FSN$Fecha <- row.names(FSN)
MWC$Fecha <- row.names(MWC)
KDA$Fecha <- row.names(KDA)
ERG$Fecha <- row.names(ERG)
TT$Fecha <- row.names(TT)
WTC$Fecha <- row.names(WTC)
SRK$Fecha <- row.names(SRK)
PIVX$Fecha <- row.names(PIVX)
APL$Fecha <- row.names(APL)
NULS$Fecha <- row.names(NULS)
NXS$Fecha <- row.names(NXS)
XNC$Fecha <- row.names(XNC)
ZNN$Fecha <- row.names(ZNN)
GRS$Fecha <- row.names(GRS)
SERO$Fecha <- row.names(SERO)
WOZX$Fecha <- row.names(WOZX)
EMC2$Fecha <- row.names(EMC2)
WICC$Fecha <- row.names(WICC)
DAG$Fecha <- row.names(DAG)
SOLVE$Fecha <- row.names(SOLVE)
LBC$Fecha <- row.names(LBC)
CTXC$Fecha <- row.names(CTXC)
VTC$Fecha <- row.names(VTC)
VITE$Fecha <- row.names(VITE)
HC$Fecha <- row.names(HC)
PAI$Fecha <- row.names(PAI)
VSYS$Fecha <- row.names(VSYS)
RBTC$Fecha <- row.names(RBTC)
MHC$Fecha <- row.names(MHC)
AXEL$Fecha <- row.names(AXEL)
PCX$Fecha <- row.names(PCX)
DERO$Fecha <- row.names(DERO)
FIO$Fecha <- row.names(FIO)
NIM$Fecha <- row.names(NIM)
GRN$Fecha <- row.names(GRN)
MASS$Fecha <- row.names(MASS)
GXC$Fecha <- row.names(GXC)
NXT$Fecha <- row.names(NXT)
SKY$Fecha <- row.names(SKY)
DGD$Fecha <- row.names(DGD)
OBSR$Fecha <- row.names(OBSR)
BDX$Fecha <- row.names(BDX)
BIP$Fecha <- row.names(BIP)
WABI$Fecha <- row.names(WABI)
NEBL$Fecha <- row.names(NEBL)
NAS$Fecha <- row.names(NAS)
GRIN$Fecha <- row.names(GRIN)
GO$Fecha <- row.names(GO)
DCN$Fecha <- row.names(DCN)
GBYTE$Fecha <- row.names(GBYTE)
SBD$Fecha <- row.names(SBD)
SALT$Fecha <- row.names(SALT)
CET$Fecha <- row.names(CET)
KRT$Fecha <- row.names(KRT)
NAV$Fecha <- row.names(NAV)
VERI$Fecha <- row.names(VERI)
XSN$Fecha <- row.names(XSN)
PZM$Fecha <- row.names(PZM)
QASH$Fecha <- row.names(QASH)
PI$Fecha <- row.names(PI)
AEON$Fecha <- row.names(AEON)
VIA$Fecha <- row.names(VIA)
GAME$Fecha <- row.names(GAME)
XDN$Fecha <- row.names(XDN)
VITAE$Fecha <- row.names(VITAE)
QRL$Fecha <- row.names(QRL)
FCT$Fecha <- row.names(FCT)
CUT$Fecha <- row.names(CUT)
NMC$Fecha <- row.names(NMC)
DMCH$Fecha <- row.names(DMCH)
RINGX$Fecha <- row.names(RINGX)
BHD$Fecha <- row.names(BHD)
ETP$Fecha <- row.names(ETP)
ZANO$Fecha <- row.names(ZANO)
PPC$Fecha <- row.names(PPC)
WGR$Fecha <- row.names(WGR)
BLOCK$Fecha <- row.names(BLOCK)
PART$Fecha <- row.names(PART)
BURST$Fecha <- row.names(BURST)
DYN$Fecha <- row.names(DYN)
SMART$Fecha <- row.names(SMART)
POA$Fecha <- row.names(POA)
HPB$Fecha <- row.names(HPB)
BEPRO$Fecha <- row.names(BEPRO)
FCT$Fecha <- row.names(FCT)
MAN$Fecha <- row.names(MAN)
ZYN$Fecha <- row.names(ZYN)
PAY$Fecha <- row.names(PAY)
UBQ$Fecha <- row.names(UBQ)
ACT$Fecha <- row.names(ACT)
RSTR$Fecha <- row.names(RSTR)
TRUE$Fecha <- row.names(TRUE)
ADK$Fecha <- row.names(ADK)
NLG$Fecha <- row.names(NLG)
NIX$Fecha <- row.names(NIX)
HTML$Fecha <- row.names(HTML)
BPS$Fecha <- row.names(BPS)
NVT$Fecha <- row.names(NVT)
MRX$Fecha <- row.names(MRX)
YOYOW$Fecha <- row.names(YOYOW)
ACH$Fecha <- row.names(ACH)
CHI$Fecha <- row.names(CHI)
SNGLS$Fecha <- row.names(SNGLS)
TERA$Fecha <- row.names(TERA)
PLC$Fecha <- row.names(PLC)
SFT$Fecha <- row.names(SFT)
MINT$Fecha <- row.names(MINT)
XLT$Fecha <- row.names(XLT)
XMY$Fecha <- row.names(XMY)
BHP$Fecha <- row.names(BHP)
FLO$Fecha <- row.names(FLO)
AMB$Fecha <- row.names(AMB)
BTC2$Fecha <- row.names(BTC2)
GLEEC$Fecha <- row.names(GLEEC)
XMC$Fecha <- row.names(XMC)
NYZO$Fecha <- row.names(NYZO)
BLK$Fecha <- row.names(BLK)
FTC$Fecha <- row.names(FTC)
FO$Fecha <- row.names(FO)
INT$Fecha <- row.names(INT)
IDNA$Fecha <- row.names(IDNA)
DMD$Fecha <- row.names(DMD)
WINGS$Fecha <- row.names(WINGS)
PHR$Fecha <- row.names(PHR)
DTEP$Fecha <- row.names(DTEP)
LCC$Fecha <- row.names(LCC)
GHOST$Fecha <- row.names(GHOST)
XST$Fecha <- row.names(XST)
MONA$Fecha <- row.names(MONA)
MIR$Fecha <- row.names(MIR)
OTO$Fecha <- row.names(OTO)
DIME$Fecha <- row.names(DIME)
AYA$Fecha <- row.names(AYA)
HTDF$Fecha <- row.names(HTDF)
VEX$Fecha <- row.names(VEX)
INSTAR$Fecha <- row.names(INSTAR)
ILC$Fecha <- row.names(ILC)
XBY$Fecha <- row.names(XBY)
USNBT$Fecha <- row.names(USNBT)
SCP$Fecha <- row.names(SCP)
CRW$Fecha <- row.names(CRW)
XRC$Fecha <- row.names(XRC)
GRC$Fecha <- row.names(GRC)
FAIR$Fecha <- row.names(FAIR)
IOC$Fecha <- row.names(IOC)
BCA$Fecha <- row.names(BCA)
CURE$Fecha <- row.names(CURE)
FLASH$Fecha <- row.names(FLASH)
HYC$Fecha <- row.names(HYC)
VIN$Fecha <- row.names(VIN)
SUB$Fecha <- row.names(SUB)
QRK$Fecha <- row.names(QRK)
BPC$Fecha <- row.names(BPC)
CHI$Fecha <- row.names(CHI)
XAS$Fecha <- row.names(XAS)
MGO$Fecha <- row.names(MGO)
PMEER$Fecha <- row.names(PMEER)
GHOST$Fecha <- row.names(GHOST)
OWC$Fecha <- row.names(OWC)
POLIS$Fecha <- row.names(POLIS)
MBC$Fecha <- row.names(MBC)
ERK$Fecha <- row.names(ERK)
DDK$Fecha <- row.names(DDK)
EDG$Fecha <- row.names(EDG)
NPC$Fecha <- row.names(NPC)
HSS$Fecha <- row.names(HSS)
OURO$Fecha <- row.names(OURO)
COMP$Fecha <- row.names(COMP)
FRST$Fecha <- row.names(FRST)
ATB$Fecha <- row.names(ATB)
DMD$Fecha <- row.names(DMD)
FAIR$Fecha <- row.names(FAIR)
BTS$Fecha <- row.names(BTS)
BST$Fecha <- row.names(BST)
BCA$Fecha <- row.names(BCA)
CCA$Fecha <- row.names(CCA)
UNO$Fecha <- row.names(UNO)
FAIR$Fecha <- row.names(FAIR)
SALT$Fecha <- row.names(SALT)
PPC$Fecha <- row.names(PPC)
LRG$Fecha <- row.names(LRG)
TUBE$Fecha <- row.names(TUBE)
JDC$Fecha <- row.names(JDC)
MIDAS$Fecha <- row.names(MIDAS)
ALIAS$Fecha <- row.names(ALIAS)
BTX$Fecha <- row.names(BTX)
UNO$Fecha <- row.names(UNO)
AIB$Fecha <- row.names(AIB)
SPHR$Fecha <- row.names(SPHR)
XCP$Fecha <- row.names(XCP)
LKK$Fecha <- row.names(LKK)
ECC$Fecha <- row.names(ECC)
ANT$Fecha <- row.names(ANT)
VBK$Fecha <- row.names(VBK)
CURE$Fecha <- row.names(CURE)
SLS$Fecha <- row.names(SLS)
FLO$Fecha <- row.names(FLO)
COLX$Fecha <- row.names(COLX)
NLC2$Fecha <- row.names(NLC2)
FLASH$Fecha <- row.names(FLASH)
BST$Fecha <- row.names(BST)
ECA$Fecha <- row.names(ECA)
MINT$Fecha <- row.names(MINT)
DCY$Fecha <- row.names(DCY)
CLAM$Fecha <- row.names(CLAM)
BONO$Fecha <- row.names(BONO)
SHIFT$Fecha <- row.names(SHIFT)
DUN$Fecha <- row.names(DUN)
RBY$Fecha <- row.names(RBY)
MOAC$Fecha <- row.names(MOAC)
BRC$Fecha <- row.names(BRC)
SAPP$Fecha <- row.names(SAPP)
MBC$Fecha <- row.names(MBC)


# --------------------------------------------------------------------------------------- #

# Se omiten los nulos 

BTC = na.omit(BTC)
ETH = na.omit(ETH)
BNB = na.omit(BNB)
DOGE = na.omit(DOGE)
XRP = na.omit(XRP)
USDT = na.omit(USDT)
ADA = na.omit(ADA)
LTC = na.omit(LTC)
LINK = na.omit(LINK)
BCH = na.omit(BCH)
USDC = na.omit(USDC)
VET = na.omit(VET)
XLM = na.omit(XLM)
THETA = na.omit(THETA)
FIL = na.omit(FIL)
TRX = na.omit(TRX)
ETC = na.omit(ETC)
NEO = na.omit(NEO)
XMR = na.omit(XMR)
EOS = na.omit(EOS)
BSV = na.omit(BSV)
AAVE = na.omit(AAVE)
MKR = na.omit(MKR)
MIOTA = na.omit(MIOTA)
XTZ = na.omit(XTZ)
CRO = na.omit(CRO)
AVAX = na.omit(AVAX)
DASH = na.omit(DASH)
ALGO = na.omit(ALGO)
WAVES = na.omit(WAVES)
MATIC = na.omit(MATIC)
COMP = na.omit(COMP)
KSM = na.omit(KSM)
EGLD = na.omit(EGLD)
ZEC = na.omit(ZEC)
XEM = na.omit(XEM)
CHZ = na.omit(CHZ)
DCR = na.omit(DCR)
HBAR = na.omit(HBAR)
ZIL = na.omit(ZIL)
MANA = na.omit(MANA)
ENJ = na.omit(ENJ)
DGB = na.omit(DGB)
BTG = na.omit(BTG)
SNX = na.omit(SNX)
YFI = na.omit(YFI)
TFUEL = na.omit(TFUEL)
BAT = na.omit(BAT)
SC = na.omit(SC)
SUSHI = na.omit(SUSHI)
ONT = na.omit(ONT)
UMA = na.omit(UMA)
RVN = na.omit(RVN)
CEL = na.omit(CEL)
QTUM = na.omit(QTUM)
ICX = na.omit(ICX)
ZRX = na.omit(ZRX)
OMG = na.omit(OMG)
BNT = na.omit(BNT)
ZEN = na.omit(ZEN)
NANO = na.omit(NANO)
CELO = na.omit(CELO)
ANKR = na.omit(ANKR)
REV = na.omit(REV)
IOST = na.omit(IOST)
TUSD = na.omit(TUSD)
VGX = na.omit(VGX)
AR = na.omit(AR)
CRV = na.omit(CRV)
XVG = na.omit(XVG)
LSK = na.omit(LSK)
CKB = na.omit(CKB)
LRC = na.omit(LRC)
KNC = na.omit(KNC)
ABBC = na.omit(ABBC)
SNT = na.omit(SNT)
VTHO = na.omit(VTHO)
BCD = na.omit(BCD)
SRM = na.omit(SRM)
STORJ = na.omit(STORJ)
IOTX = na.omit(IOTX)
QNT = na.omit(QNT)
GLM = na.omit(GLM)
REP = na.omit(REP)
FET = na.omit(FET)
EWT = na.omit(EWT)
FUN = na.omit(FUN)
WAXP = na.omit(WAXP)
NKN = na.omit(NKN)
MAID = na.omit(MAID)
BAND = na.omit(BAND)
MCO = na.omit(MCO)
STRAX = na.omit(STRAX)
SYS = na.omit(SYS)
RLC = na.omit(RLC)
KIN = na.omit(KIN)
BTS = na.omit(BTS)
GNO = na.omit(GNO)
CVC = na.omit(CVC)
ARDR = na.omit(ARDR)
KAVA = na.omit(KAVA)
ANT = na.omit(ANT)
MED = na.omit(MED)
KMD = na.omit(KMD)
STEEM = na.omit(STEEM)
NU = na.omit(NU)
XHV = na.omit(XHV)
SNM = na.omit(SNM)
VLX = na.omit(VLX)
HNS = na.omit(HNS)
WAN = na.omit(WAN)
BTM = na.omit(BTM)
AVA = na.omit(AVA)
ARK = na.omit(ARK)
MTL = na.omit(MTL)
META = na.omit(META)
PPT = na.omit(PPT)
HIVE = na.omit(HIVE)
COTI = na.omit(COTI)
OXT = na.omit(OXT)
HEX = na.omit(HEX)
CCXX = na.omit(CCXX)
DFI = na.omit(DFI)
XWC = na.omit(XWC)
ARRR = na.omit(ARRR)
XDC = na.omit(XDC)
MIR = na.omit(MIR)
ETN = na.omit(ETN)
ATRI = na.omit(ATRI)
HNC = na.omit(HNC)
TWT = na.omit(TWT)
COTI = na.omit(COTI)
TOMO = na.omit(TOMO)
RDD = na.omit(RDD)
MLN = na.omit(MLN)
IRIS = na.omit(IRIS)
MARO = na.omit(MARO)
REV = na.omit(REV)
DNT = na.omit(DNT)
BCN = na.omit(BCN)
PAC = na.omit(PAC)
CRU = na.omit(CRU)
MONA = na.omit(MONA)
AION = na.omit(AION)
ELA = na.omit(ELA)
NYE = na.omit(NYE)
DIVI = na.omit(DIVI)
FIRO = na.omit(FIRO)
GAS = na.omit(GAS)
PHA = na.omit(PHA)
ADX = na.omit(ADX)
SAPP = na.omit(SAPP)
NRG = na.omit(NRG)
VRA = na.omit(VRA)
CSC = na.omit(CSC)
BEAM = na.omit(BEAM)
EDG = na.omit(EDG)
AE = na.omit(AE)
FSN = na.omit(FSN)
MWC = na.omit(MWC)
KDA = na.omit(KDA)
ERG = na.omit(ERG)
TT = na.omit(TT)
WTC = na.omit(WTC)
SRK = na.omit(SRK)
PIVX = na.omit(PIVX)
APL = na.omit(APL)
NULS = na.omit(NULS)
NXS = na.omit(NXS)
XNC = na.omit(XNC)
ZNN = na.omit(ZNN)
GRS = na.omit(GRS)
SERO = na.omit(SERO)
WOZX = na.omit(WOZX)
EMC2 = na.omit(EMC2)
WICC = na.omit(WICC)
DAG = na.omit(DAG)
SOLVE = na.omit(SOLVE)
LBC = na.omit(LBC)
CTXC = na.omit(CTXC)
VTC = na.omit(VTC)
VITE = na.omit(VITE)
HC = na.omit(HC)
PAI = na.omit(PAI)
VSYS = na.omit(VSYS)
RBTC = na.omit(RBTC)
MHC = na.omit(MHC)
AXEL = na.omit(AXEL)
PCX = na.omit(PCX)
DERO = na.omit(DERO)
FIO = na.omit(FIO)
NIM = na.omit(NIM)
GRN = na.omit(GRN)
MASS = na.omit(MASS)
GXC = na.omit(GXC)
NXT = na.omit(NXT)
SKY = na.omit(SKY)
DGD = na.omit(DGD)
OBSR = na.omit(OBSR)
BDX = na.omit(BDX)
BIP = na.omit(BIP)
WABI = na.omit(WABI)
NEBL = na.omit(NEBL)
NAS = na.omit(NAS)
GRIN = na.omit(GRIN)
GO = na.omit(GO)
DCN = na.omit(DCN)
GBYTE = na.omit(GBYTE)
SBD = na.omit(SBD)
SALT = na.omit(SALT)
CET = na.omit(CET)
KRT = na.omit(KRT)
NAV = na.omit(NAV)
VERI = na.omit(VERI)
XSN = na.omit(XSN)
PZM = na.omit(PZM)
QASH = na.omit(QASH)
PI = na.omit(PI)
AEON = na.omit(AEON)
VIA = na.omit(VIA)
GAME = na.omit(GAME)
XDN = na.omit(XDN)
VITAE = na.omit(VITAE)
QRL = na.omit(QRL)
FCT = na.omit(FCT)
CUT = na.omit(CUT)
NMC = na.omit(NMC)
DMCH = na.omit(DMCH)
RINGX = na.omit(RINGX)
BHD = na.omit(BHD)
ETP = na.omit(ETP)
ZANO = na.omit(ZANO)
PPC = na.omit(PPC)
WGR = na.omit(WGR)
BLOCK = na.omit(BLOCK)
PART = na.omit(PART)
BURST = na.omit(BURST)
DYN = na.omit(DYN)
SMART = na.omit(SMART)
POA = na.omit(POA)
HPB = na.omit(HPB)
BEPRO = na.omit(BEPRO)
FCT = na.omit(FCT)
MAN = na.omit(MAN)
ZYN = na.omit(ZYN)
PAY = na.omit(PAY)
UBQ = na.omit(UBQ)
ACT = na.omit(ACT)
RSTR = na.omit(RSTR)
TRUE = na.omit(TRUE)
ADK = na.omit(ADK)
NLG = na.omit(NLG)
NIX = na.omit(NIX)
HTML = na.omit(HTML)
BPS = na.omit(BPS)
NVT = na.omit(NVT)
MRX = na.omit(MRX)
YOYOW = na.omit(YOYOW)
ACH = na.omit(ACH)
CHI = na.omit(CHI)
SNGLS = na.omit(SNGLS)
TERA = na.omit(TERA)
PLC = na.omit(PLC)
SFT = na.omit(SFT)
MINT = na.omit(MINT)
XLT = na.omit(XLT)
XMY = na.omit(XMY)
BHP = na.omit(BHP)
FLO = na.omit(FLO)
AMB = na.omit(AMB)
BTC2 = na.omit(BTC2)
GLEEC = na.omit(GLEEC)
XMC = na.omit(XMC)
NYZO = na.omit(NYZO)
BLK = na.omit(BLK)
FTC = na.omit(FTC)
FO = na.omit(FO)
INT = na.omit(INT)
IDNA = na.omit(IDNA)
DMD = na.omit(DMD)
WINGS = na.omit(WINGS)
PHR = na.omit(PHR)
DTEP = na.omit(DTEP)
LCC = na.omit(LCC)
GHOST = na.omit(GHOST)
XST = na.omit(XST)
MONA = na.omit(MONA)
MIR = na.omit(MIR)
OTO = na.omit(OTO)
DIME = na.omit(DIME)
AYA = na.omit(AYA)
HTDF = na.omit(HTDF)
VEX = na.omit(VEX)
INSTAR = na.omit(INSTAR)
ILC = na.omit(ILC)
XBY = na.omit(XBY)
USNBT = na.omit(USNBT)
SCP = na.omit(SCP)
CRW = na.omit(CRW)
XRC = na.omit(XRC)
GRC = na.omit(GRC)
FAIR = na.omit(FAIR)
IOC = na.omit(IOC)
BCA = na.omit(BCA)
CURE = na.omit(CURE)
FLASH = na.omit(FLASH)
HYC = na.omit(HYC)
VIN = na.omit(VIN)
SUB = na.omit(SUB)
QRK = na.omit(QRK)
BPC = na.omit(BPC)
CHI = na.omit(CHI)
XAS = na.omit(XAS)
MGO = na.omit(MGO)
PMEER = na.omit(PMEER)
GHOST = na.omit(GHOST)
OWC = na.omit(OWC)
POLIS = na.omit(POLIS)
MBC = na.omit(MBC)
ERK = na.omit(ERK)
DDK = na.omit(DDK)
EDG = na.omit(EDG)
NPC = na.omit(NPC)
HSS = na.omit(HSS)
OURO = na.omit(OURO)
COMP = na.omit(COMP)
FRST = na.omit(FRST)
ATB = na.omit(ATB)
DMD = na.omit(DMD)
FAIR = na.omit(FAIR)
BTS = na.omit(BTS)
BST = na.omit(BST)
BCA = na.omit(BCA)
CCA = na.omit(CCA)
UNO = na.omit(UNO)
FAIR = na.omit(FAIR)
SALT = na.omit(SALT)
PPC = na.omit(PPC)
LRG = na.omit(LRG)
TUBE = na.omit(TUBE)
JDC = na.omit(JDC)
MIDAS = na.omit(MIDAS)
ALIAS = na.omit(ALIAS)
BTX = na.omit(BTX)
UNO = na.omit(UNO)
AIB = na.omit(AIB)
SPHR = na.omit(SPHR)
XCP = na.omit(XCP)
LKK = na.omit(LKK)
ECC = na.omit(ECC)
ANT = na.omit(ANT)
VBK = na.omit(VBK)
CURE = na.omit(CURE)
SLS = na.omit(SLS)
FLO = na.omit(FLO)
COLX = na.omit(COLX)
NLC2 = na.omit(NLC2)
FLASH = na.omit(FLASH)
BST = na.omit(BST)
ECA = na.omit(ECA)
MINT = na.omit(MINT)
DCY = na.omit(DCY)
CLAM = na.omit(CLAM)
BONO = na.omit(BONO)
SHIFT = na.omit(SHIFT)
DUN = na.omit(DUN)
RBY = na.omit(RBY)
MOAC = na.omit(MOAC)
BRC = na.omit(BRC)
SAPP = na.omit(SAPP)
MBC = na.omit(MBC)


# --------------------------------------------------------------------------------------- #

# Se mofidican las columnas

colnames(BTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ETH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BNB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DOGE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XRP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(USDT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ADA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LINK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BCH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(USDC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VET) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XLM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(THETA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FIL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TRX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ETC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NEO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XMR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EOS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BSV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AAVE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MKR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MIOTA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XTZ) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CRO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AVAX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DASH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ALGO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WAVES) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MATIC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(COMP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KSM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EGLD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZEC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XEM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CHZ) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DCR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HBAR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZIL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MANA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ENJ) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DGB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SNX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(YFI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TFUEL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BAT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SUSHI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ONT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(UMA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RVN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CEL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(QTUM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ICX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZRX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OMG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BNT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZEN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NANO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CELO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ANKR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(REV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(IOST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TUSD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VGX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CRV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XVG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LSK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CKB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LRC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KNC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ABBC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SNT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VTHO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BCD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SRM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(STORJ) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(IOTX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(QNT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GLM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(REP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FET) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EWT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FUN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WAXP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NKN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MAID) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BAND) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MCO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(STRAX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SYS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RLC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KIN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GNO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CVC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ARDR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KAVA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ANT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MED) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KMD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(STEEM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NU) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XHV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SNM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VLX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HNS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WAN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AVA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ARK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MTL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(META) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PPT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HIVE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(COTI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OXT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HEX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CCXX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DFI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XWC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ARRR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XDC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MIR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ETN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ATRI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HNC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TWT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(COTI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TOMO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RDD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MLN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(IRIS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MARO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(REV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DNT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BCN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PAC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CRU) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MONA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AION) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ELA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NYE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DIVI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FIRO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GAS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PHA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ADX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SAPP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NRG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VRA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CSC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BEAM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EDG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FSN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MWC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KDA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ERG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SRK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PIVX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(APL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NULS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NXS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XNC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZNN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GRS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SERO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WOZX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EMC2) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WICC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DAG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SOLVE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LBC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CTXC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VITE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PAI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VSYS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RBTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MHC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AXEL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PCX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DERO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FIO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NIM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GRN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MASS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GXC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NXT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SKY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DGD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OBSR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BDX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BIP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WABI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NEBL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NAS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GRIN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DCN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GBYTE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SBD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SALT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CET) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(KRT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NAV) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VERI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XSN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PZM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(QASH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AEON) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VIA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GAME) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XDN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VITAE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(QRL) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FCT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CUT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NMC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DMCH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RINGX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BHD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ETP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZANO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PPC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WGR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BLOCK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PART) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BURST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DYN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SMART) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(POA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HPB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BEPRO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FCT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MAN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ZYN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PAY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(UBQ) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ACT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RSTR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TRUE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ADK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NLG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NIX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HTML) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BPS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NVT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MRX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(YOYOW) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ACH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CHI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SNGLS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TERA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PLC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SFT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MINT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XLT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XMY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BHP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FLO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AMB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTC2) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GLEEC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XMC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NYZO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BLK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FTC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(INT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(IDNA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DMD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(WINGS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PHR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DTEP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LCC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GHOST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MONA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MIR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OTO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DIME) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AYA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HTDF) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VEX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(INSTAR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ILC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XBY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(USNBT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SCP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CRW) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XRC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GRC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FAIR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(IOC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BCA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CURE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FLASH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HYC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VIN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SUB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(QRK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BPC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CHI) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XAS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MGO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PMEER) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(GHOST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OWC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(POLIS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MBC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ERK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DDK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(EDG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NPC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(HSS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(OURO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(COMP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FRST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ATB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DMD) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FAIR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BCA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CCA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(UNO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FAIR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SALT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(PPC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LRG) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(TUBE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(JDC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MIDAS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ALIAS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BTX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(UNO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(AIB) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SPHR) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(XCP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(LKK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ECC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ANT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(VBK) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CURE) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SLS) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FLO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(COLX) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(NLC2) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(FLASH) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BST) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(ECA) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MINT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DCY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(CLAM) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BONO) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SHIFT) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(DUN) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(RBY) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MOAC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(BRC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(SAPP) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")
colnames(MBC) = c("Open", "High", "Low", "Close", "Volumen", "Ajustado", "Fecha")


# --------------------------------------------------------------------------------------- #

# Se crean variables las variaciones % del ultimo dia respecto a sus valores maximos

BTCdis = round( ( BTC[length(BTC$Close),1] - max(BTC$Close) ) / BTC[length(BTC$Close),1] ,4)*100 
ETHdis = round( ( ETH[length(ETH$Close),1] - max(ETH$Close) ) / ETH[length(ETH$Close),1] ,4)*100 
BNBdis = round( ( BNB[length(BNB$Close),1] - max(BNB$Close) ) / BNB[length(BNB$Close),1] ,4)*100 
DOGEdis = round( ( DOGE[length(DOGE$Close),1] - max(DOGE$Close) ) / DOGE[length(DOGE$Close),1] ,4)*100 
XRPdis = round( ( XRP[length(XRP$Close),1] - max(XRP$Close) ) / XRP[length(XRP$Close),1] ,4)*100 
USDTdis = round( ( USDT[length(USDT$Close),1] - max(USDT$Close) ) / USDT[length(USDT$Close),1] ,4)*100 
ADAdis = round( ( ADA[length(ADA$Close),1] - max(ADA$Close) ) / ADA[length(ADA$Close),1] ,4)*100 
LTCdis = round( ( LTC[length(LTC$Close),1] - max(LTC$Close) ) / LTC[length(LTC$Close),1] ,4)*100 
LINKdis = round( ( LINK[length(LINK$Close),1] - max(LINK$Close) ) / LINK[length(LINK$Close),1] ,4)*100 
BCHdis = round( ( BCH[length(BCH$Close),1] - max(BCH$Close) ) / BCH[length(BCH$Close),1] ,4)*100 
USDCdis = round( ( USDC[length(USDC$Close),1] - max(USDC$Close) ) / USDC[length(USDC$Close),1] ,4)*100 
VETdis = round( ( VET[length(VET$Close),1] - max(VET$Close) ) / VET[length(VET$Close),1] ,4)*100 
XLMdis = round( ( XLM[length(XLM$Close),1] - max(XLM$Close) ) / XLM[length(XLM$Close),1] ,4)*100 
THETAdis = round( ( THETA[length(THETA$Close),1] - max(THETA$Close) ) / THETA[length(THETA$Close),1] ,4)*100 
FILdis = round( ( FIL[length(FIL$Close),1] - max(FIL$Close) ) / FIL[length(FIL$Close),1] ,4)*100 
TRXdis = round( ( TRX[length(TRX$Close),1] - max(TRX$Close) ) / TRX[length(TRX$Close),1] ,4)*100 
ETCdis = round( ( ETC[length(ETC$Close),1] - max(ETC$Close) ) / ETC[length(ETC$Close),1] ,4)*100 
NEOdis = round( ( NEO[length(NEO$Close),1] - max(NEO$Close) ) / NEO[length(NEO$Close),1] ,4)*100 
XMRdis = round( ( XMR[length(XMR$Close),1] - max(XMR$Close) ) / XMR[length(XMR$Close),1] ,4)*100 
EOSdis = round( ( EOS[length(EOS$Close),1] - max(EOS$Close) ) / EOS[length(EOS$Close),1] ,4)*100 
BSVdis = round( ( BSV[length(BSV$Close),1] - max(BSV$Close) ) / BSV[length(BSV$Close),1] ,4)*100 
AAVEdis = round( ( AAVE[length(AAVE$Close),1] - max(AAVE$Close) ) / AAVE[length(AAVE$Close),1] ,4)*100 
MKRdis = round( ( MKR[length(MKR$Close),1] - max(MKR$Close) ) / MKR[length(MKR$Close),1] ,4)*100 
MIOTAdis = round( ( MIOTA[length(MIOTA$Close),1] - max(MIOTA$Close) ) / MIOTA[length(MIOTA$Close),1] ,4)*100 
XTZdis = round( ( XTZ[length(XTZ$Close),1] - max(XTZ$Close) ) / XTZ[length(XTZ$Close),1] ,4)*100 
CROdis = round( ( CRO[length(CRO$Close),1] - max(CRO$Close) ) / CRO[length(CRO$Close),1] ,4)*100 
AVAXdis = round( ( AVAX[length(AVAX$Close),1] - max(AVAX$Close) ) / AVAX[length(AVAX$Close),1] ,4)*100 
DASHdis = round( ( DASH[length(DASH$Close),1] - max(DASH$Close) ) / DASH[length(DASH$Close),1] ,4)*100 
ALGOdis = round( ( ALGO[length(ALGO$Close),1] - max(ALGO$Close) ) / ALGO[length(ALGO$Close),1] ,4)*100 
WAVESdis = round( ( WAVES[length(WAVES$Close),1] - max(WAVES$Close) ) / WAVES[length(WAVES$Close),1] ,4)*100 
MATICdis = round( ( MATIC[length(MATIC$Close),1] - max(MATIC$Close) ) / MATIC[length(MATIC$Close),1] ,4)*100 
COMPdis = round( ( COMP[length(COMP$Close),1] - max(COMP$Close) ) / COMP[length(COMP$Close),1] ,4)*100 
KSMdis = round( ( KSM[length(KSM$Close),1] - max(KSM$Close) ) / KSM[length(KSM$Close),1] ,4)*100 
EGLDdis = round( ( EGLD[length(EGLD$Close),1] - max(EGLD$Close) ) / EGLD[length(EGLD$Close),1] ,4)*100 
ZECdis = round( ( ZEC[length(ZEC$Close),1] - max(ZEC$Close) ) / ZEC[length(ZEC$Close),1] ,4)*100 
XEMdis = round( ( XEM[length(XEM$Close),1] - max(XEM$Close) ) / XEM[length(XEM$Close),1] ,4)*100 
CHZdis = round( ( CHZ[length(CHZ$Close),1] - max(CHZ$Close) ) / CHZ[length(CHZ$Close),1] ,4)*100 
DCRdis = round( ( DCR[length(DCR$Close),1] - max(DCR$Close) ) / DCR[length(DCR$Close),1] ,4)*100 
HBARdis = round( ( HBAR[length(HBAR$Close),1] - max(HBAR$Close) ) / HBAR[length(HBAR$Close),1] ,4)*100 
ZILdis = round( ( ZIL[length(ZIL$Close),1] - max(ZIL$Close) ) / ZIL[length(ZIL$Close),1] ,4)*100 
MANAdis = round( ( MANA[length(MANA$Close),1] - max(MANA$Close) ) / MANA[length(MANA$Close),1] ,4)*100 
ENJdis = round( ( ENJ[length(ENJ$Close),1] - max(ENJ$Close) ) / ENJ[length(ENJ$Close),1] ,4)*100 
DGBdis = round( ( DGB[length(DGB$Close),1] - max(DGB$Close) ) / DGB[length(DGB$Close),1] ,4)*100 
BTGdis = round( ( BTG[length(BTG$Close),1] - max(BTG$Close) ) / BTG[length(BTG$Close),1] ,4)*100 
SNXdis = round( ( SNX[length(SNX$Close),1] - max(SNX$Close) ) / SNX[length(SNX$Close),1] ,4)*100 
YFIdis = round( ( YFI[length(YFI$Close),1] - max(YFI$Close) ) / YFI[length(YFI$Close),1] ,4)*100 
TFUELdis = round( ( TFUEL[length(TFUEL$Close),1] - max(TFUEL$Close) ) / TFUEL[length(TFUEL$Close),1] ,4)*100 
BATdis = round( ( BAT[length(BAT$Close),1] - max(BAT$Close) ) / BAT[length(BAT$Close),1] ,4)*100 
SCdis = round( ( SC[length(SC$Close),1] - max(SC$Close) ) / SC[length(SC$Close),1] ,4)*100 
SUSHIdis = round( ( SUSHI[length(SUSHI$Close),1] - max(SUSHI$Close) ) / SUSHI[length(SUSHI$Close),1] ,4)*100 
ONTdis = round( ( ONT[length(ONT$Close),1] - max(ONT$Close) ) / ONT[length(ONT$Close),1] ,4)*100 
UMAdis = round( ( UMA[length(UMA$Close),1] - max(UMA$Close) ) / UMA[length(UMA$Close),1] ,4)*100 
RVNdis = round( ( RVN[length(RVN$Close),1] - max(RVN$Close) ) / RVN[length(RVN$Close),1] ,4)*100 
CELdis = round( ( CEL[length(CEL$Close),1] - max(CEL$Close) ) / CEL[length(CEL$Close),1] ,4)*100 
QTUMdis = round( ( QTUM[length(QTUM$Close),1] - max(QTUM$Close) ) / QTUM[length(QTUM$Close),1] ,4)*100 
ICXdis = round( ( ICX[length(ICX$Close),1] - max(ICX$Close) ) / ICX[length(ICX$Close),1] ,4)*100 
ZRXdis = round( ( ZRX[length(ZRX$Close),1] - max(ZRX$Close) ) / ZRX[length(ZRX$Close),1] ,4)*100 
OMGdis = round( ( OMG[length(OMG$Close),1] - max(OMG$Close) ) / OMG[length(OMG$Close),1] ,4)*100 
BNTdis = round( ( BNT[length(BNT$Close),1] - max(BNT$Close) ) / BNT[length(BNT$Close),1] ,4)*100 
ZENdis = round( ( ZEN[length(ZEN$Close),1] - max(ZEN$Close) ) / ZEN[length(ZEN$Close),1] ,4)*100 
NANOdis = round( ( NANO[length(NANO$Close),1] - max(NANO$Close) ) / NANO[length(NANO$Close),1] ,4)*100 
CELOdis = round( ( CELO[length(CELO$Close),1] - max(CELO$Close) ) / CELO[length(CELO$Close),1] ,4)*100 
ANKRdis = round( ( ANKR[length(ANKR$Close),1] - max(ANKR$Close) ) / ANKR[length(ANKR$Close),1] ,4)*100 
REVdis = round( ( REV[length(REV$Close),1] - max(REV$Close) ) / REV[length(REV$Close),1] ,4)*100 
IOSTdis = round( ( IOST[length(IOST$Close),1] - max(IOST$Close) ) / IOST[length(IOST$Close),1] ,4)*100 
TUSDdis = round( ( TUSD[length(TUSD$Close),1] - max(TUSD$Close) ) / TUSD[length(TUSD$Close),1] ,4)*100 
VGXdis = round( ( VGX[length(VGX$Close),1] - max(VGX$Close) ) / VGX[length(VGX$Close),1] ,4)*100 
ARdis = round( ( AR[length(AR$Close),1] - max(AR$Close) ) / AR[length(AR$Close),1] ,4)*100 
CRVdis = round( ( CRV[length(CRV$Close),1] - max(CRV$Close) ) / CRV[length(CRV$Close),1] ,4)*100 
XVGdis = round( ( XVG[length(XVG$Close),1] - max(XVG$Close) ) / XVG[length(XVG$Close),1] ,4)*100 
LSKdis = round( ( LSK[length(LSK$Close),1] - max(LSK$Close) ) / LSK[length(LSK$Close),1] ,4)*100 
CKBdis = round( ( CKB[length(CKB$Close),1] - max(CKB$Close) ) / CKB[length(CKB$Close),1] ,4)*100 
LRCdis = round( ( LRC[length(LRC$Close),1] - max(LRC$Close) ) / LRC[length(LRC$Close),1] ,4)*100 
KNCdis = round( ( KNC[length(KNC$Close),1] - max(KNC$Close) ) / KNC[length(KNC$Close),1] ,4)*100 
ABBCdis = round( ( ABBC[length(ABBC$Close),1] - max(ABBC$Close) ) / ABBC[length(ABBC$Close),1] ,4)*100 
SNTdis = round( ( SNT[length(SNT$Close),1] - max(SNT$Close) ) / SNT[length(SNT$Close),1] ,4)*100 
VTHOdis = round( ( VTHO[length(VTHO$Close),1] - max(VTHO$Close) ) / VTHO[length(VTHO$Close),1] ,4)*100 
BCDdis = round( ( BCD[length(BCD$Close),1] - max(BCD$Close) ) / BCD[length(BCD$Close),1] ,4)*100 
SRMdis = round( ( SRM[length(SRM$Close),1] - max(SRM$Close) ) / SRM[length(SRM$Close),1] ,4)*100 
STORJdis = round( ( STORJ[length(STORJ$Close),1] - max(STORJ$Close) ) / STORJ[length(STORJ$Close),1] ,4)*100 
IOTXdis = round( ( IOTX[length(IOTX$Close),1] - max(IOTX$Close) ) / IOTX[length(IOTX$Close),1] ,4)*100 
QNTdis = round( ( QNT[length(QNT$Close),1] - max(QNT$Close) ) / QNT[length(QNT$Close),1] ,4)*100 
GLMdis = round( ( GLM[length(GLM$Close),1] - max(GLM$Close) ) / GLM[length(GLM$Close),1] ,4)*100 
REPdis = round( ( REP[length(REP$Close),1] - max(REP$Close) ) / REP[length(REP$Close),1] ,4)*100 
FETdis = round( ( FET[length(FET$Close),1] - max(FET$Close) ) / FET[length(FET$Close),1] ,4)*100 
EWTdis = round( ( EWT[length(EWT$Close),1] - max(EWT$Close) ) / EWT[length(EWT$Close),1] ,4)*100 
FUNdis = round( ( FUN[length(FUN$Close),1] - max(FUN$Close) ) / FUN[length(FUN$Close),1] ,4)*100 
WAXPdis = round( ( WAXP[length(WAXP$Close),1] - max(WAXP$Close) ) / WAXP[length(WAXP$Close),1] ,4)*100 
NKNdis = round( ( NKN[length(NKN$Close),1] - max(NKN$Close) ) / NKN[length(NKN$Close),1] ,4)*100 
MAIDdis = round( ( MAID[length(MAID$Close),1] - max(MAID$Close) ) / MAID[length(MAID$Close),1] ,4)*100 
BANDdis = round( ( BAND[length(BAND$Close),1] - max(BAND$Close) ) / BAND[length(BAND$Close),1] ,4)*100 
MCOdis = round( ( MCO[length(MCO$Close),1] - max(MCO$Close) ) / MCO[length(MCO$Close),1] ,4)*100 
STRAXdis = round( ( STRAX[length(STRAX$Close),1] - max(STRAX$Close) ) / STRAX[length(STRAX$Close),1] ,4)*100 
SYSdis = round( ( SYS[length(SYS$Close),1] - max(SYS$Close) ) / SYS[length(SYS$Close),1] ,4)*100 
RLCdis = round( ( RLC[length(RLC$Close),1] - max(RLC$Close) ) / RLC[length(RLC$Close),1] ,4)*100 
KINdis = round( ( KIN[length(KIN$Close),1] - max(KIN$Close) ) / KIN[length(KIN$Close),1] ,4)*100 
BTSdis = round( ( BTS[length(BTS$Close),1] - max(BTS$Close) ) / BTS[length(BTS$Close),1] ,4)*100 
GNOdis = round( ( GNO[length(GNO$Close),1] - max(GNO$Close) ) / GNO[length(GNO$Close),1] ,4)*100 
CVCdis = round( ( CVC[length(CVC$Close),1] - max(CVC$Close) ) / CVC[length(CVC$Close),1] ,4)*100 
ARDRdis = round( ( ARDR[length(ARDR$Close),1] - max(ARDR$Close) ) / ARDR[length(ARDR$Close),1] ,4)*100 
KAVAdis = round( ( KAVA[length(KAVA$Close),1] - max(KAVA$Close) ) / KAVA[length(KAVA$Close),1] ,4)*100 
ANTdis = round( ( ANT[length(ANT$Close),1] - max(ANT$Close) ) / ANT[length(ANT$Close),1] ,4)*100 
MEDdis = round( ( MED[length(MED$Close),1] - max(MED$Close) ) / MED[length(MED$Close),1] ,4)*100 
KMDdis = round( ( KMD[length(KMD$Close),1] - max(KMD$Close) ) / KMD[length(KMD$Close),1] ,4)*100 
STEEMdis = round( ( STEEM[length(STEEM$Close),1] - max(STEEM$Close) ) / STEEM[length(STEEM$Close),1] ,4)*100 
NUdis = round( ( NU[length(NU$Close),1] - max(NU$Close) ) / NU[length(NU$Close),1] ,4)*100 
XHVdis = round( ( XHV[length(XHV$Close),1] - max(XHV$Close) ) / XHV[length(XHV$Close),1] ,4)*100 
SNMdis = round( ( SNM[length(SNM$Close),1] - max(SNM$Close) ) / SNM[length(SNM$Close),1] ,4)*100 
VLXdis = round( ( VLX[length(VLX$Close),1] - max(VLX$Close) ) / VLX[length(VLX$Close),1] ,4)*100 
HNSdis = round( ( HNS[length(HNS$Close),1] - max(HNS$Close) ) / HNS[length(HNS$Close),1] ,4)*100 
WANdis = round( ( WAN[length(WAN$Close),1] - max(WAN$Close) ) / WAN[length(WAN$Close),1] ,4)*100 
BTMdis = round( ( BTM[length(BTM$Close),1] - max(BTM$Close) ) / BTM[length(BTM$Close),1] ,4)*100 
AVAdis = round( ( AVA[length(AVA$Close),1] - max(AVA$Close) ) / AVA[length(AVA$Close),1] ,4)*100 
ARKdis = round( ( ARK[length(ARK$Close),1] - max(ARK$Close) ) / ARK[length(ARK$Close),1] ,4)*100 
MTLdis = round( ( MTL[length(MTL$Close),1] - max(MTL$Close) ) / MTL[length(MTL$Close),1] ,4)*100 
METAdis = round( ( META[length(META$Close),1] - max(META$Close) ) / META[length(META$Close),1] ,4)*100 
PPTdis = round( ( PPT[length(PPT$Close),1] - max(PPT$Close) ) / PPT[length(PPT$Close),1] ,4)*100 
HIVEdis = round( ( HIVE[length(HIVE$Close),1] - max(HIVE$Close) ) / HIVE[length(HIVE$Close),1] ,4)*100 
COTIdis = round( ( COTI[length(COTI$Close),1] - max(COTI$Close) ) / COTI[length(COTI$Close),1] ,4)*100 
OXTdis = round( ( OXT[length(OXT$Close),1] - max(OXT$Close) ) / OXT[length(OXT$Close),1] ,4)*100 
HEXdis = round( ( HEX[length(HEX$Close),1] - max(HEX$Close) ) / HEX[length(HEX$Close),1] ,4)*100 
CCXXdis = round( ( CCXX[length(CCXX$Close),1] - max(CCXX$Close) ) / CCXX[length(CCXX$Close),1] ,4)*100 
DFIdis = round( ( DFI[length(DFI$Close),1] - max(DFI$Close) ) / DFI[length(DFI$Close),1] ,4)*100 
XWCdis = round( ( XWC[length(XWC$Close),1] - max(XWC$Close) ) / XWC[length(XWC$Close),1] ,4)*100 
ARRRdis = round( ( ARRR[length(ARRR$Close),1] - max(ARRR$Close) ) / ARRR[length(ARRR$Close),1] ,4)*100 
XDCdis = round( ( XDC[length(XDC$Close),1] - max(XDC$Close) ) / XDC[length(XDC$Close),1] ,4)*100 
MIRdis = round( ( MIR[length(MIR$Close),1] - max(MIR$Close) ) / MIR[length(MIR$Close),1] ,4)*100 
ETNdis = round( ( ETN[length(ETN$Close),1] - max(ETN$Close) ) / ETN[length(ETN$Close),1] ,4)*100 
ATRIdis = round( ( ATRI[length(ATRI$Close),1] - max(ATRI$Close) ) / ATRI[length(ATRI$Close),1] ,4)*100 
HNCdis = round( ( HNC[length(HNC$Close),1] - max(HNC$Close) ) / HNC[length(HNC$Close),1] ,4)*100 
TWTdis = round( ( TWT[length(TWT$Close),1] - max(TWT$Close) ) / TWT[length(TWT$Close),1] ,4)*100 
COTIdis = round( ( COTI[length(COTI$Close),1] - max(COTI$Close) ) / COTI[length(COTI$Close),1] ,4)*100 
TOMOdis = round( ( TOMO[length(TOMO$Close),1] - max(TOMO$Close) ) / TOMO[length(TOMO$Close),1] ,4)*100 
RDDdis = round( ( RDD[length(RDD$Close),1] - max(RDD$Close) ) / RDD[length(RDD$Close),1] ,4)*100 
MLNdis = round( ( MLN[length(MLN$Close),1] - max(MLN$Close) ) / MLN[length(MLN$Close),1] ,4)*100 
IRISdis = round( ( IRIS[length(IRIS$Close),1] - max(IRIS$Close) ) / IRIS[length(IRIS$Close),1] ,4)*100 
MAROdis = round( ( MARO[length(MARO$Close),1] - max(MARO$Close) ) / MARO[length(MARO$Close),1] ,4)*100 
REVdis = round( ( REV[length(REV$Close),1] - max(REV$Close) ) / REV[length(REV$Close),1] ,4)*100 
DNTdis = round( ( DNT[length(DNT$Close),1] - max(DNT$Close) ) / DNT[length(DNT$Close),1] ,4)*100 
BCNdis = round( ( BCN[length(BCN$Close),1] - max(BCN$Close) ) / BCN[length(BCN$Close),1] ,4)*100 
PACdis = round( ( PAC[length(PAC$Close),1] - max(PAC$Close) ) / PAC[length(PAC$Close),1] ,4)*100 
CRUdis = round( ( CRU[length(CRU$Close),1] - max(CRU$Close) ) / CRU[length(CRU$Close),1] ,4)*100 
MONAdis = round( ( MONA[length(MONA$Close),1] - max(MONA$Close) ) / MONA[length(MONA$Close),1] ,4)*100 
AIONdis = round( ( AION[length(AION$Close),1] - max(AION$Close) ) / AION[length(AION$Close),1] ,4)*100 
ELAdis = round( ( ELA[length(ELA$Close),1] - max(ELA$Close) ) / ELA[length(ELA$Close),1] ,4)*100 
NYEdis = round( ( NYE[length(NYE$Close),1] - max(NYE$Close) ) / NYE[length(NYE$Close),1] ,4)*100 
DIVIdis = round( ( DIVI[length(DIVI$Close),1] - max(DIVI$Close) ) / DIVI[length(DIVI$Close),1] ,4)*100 
FIROdis = round( ( FIRO[length(FIRO$Close),1] - max(FIRO$Close) ) / FIRO[length(FIRO$Close),1] ,4)*100 
GASdis = round( ( GAS[length(GAS$Close),1] - max(GAS$Close) ) / GAS[length(GAS$Close),1] ,4)*100 
PHAdis = round( ( PHA[length(PHA$Close),1] - max(PHA$Close) ) / PHA[length(PHA$Close),1] ,4)*100 
ADXdis = round( ( ADX[length(ADX$Close),1] - max(ADX$Close) ) / ADX[length(ADX$Close),1] ,4)*100 
SAPPdis = round( ( SAPP[length(SAPP$Close),1] - max(SAPP$Close) ) / SAPP[length(SAPP$Close),1] ,4)*100 
NRGdis = round( ( NRG[length(NRG$Close),1] - max(NRG$Close) ) / NRG[length(NRG$Close),1] ,4)*100 
VRAdis = round( ( VRA[length(VRA$Close),1] - max(VRA$Close) ) / VRA[length(VRA$Close),1] ,4)*100 
CSCdis = round( ( CSC[length(CSC$Close),1] - max(CSC$Close) ) / CSC[length(CSC$Close),1] ,4)*100 
BEAMdis = round( ( BEAM[length(BEAM$Close),1] - max(BEAM$Close) ) / BEAM[length(BEAM$Close),1] ,4)*100 
EDGdis = round( ( EDG[length(EDG$Close),1] - max(EDG$Close) ) / EDG[length(EDG$Close),1] ,4)*100 
AEdis = round( ( AE[length(AE$Close),1] - max(AE$Close) ) / AE[length(AE$Close),1] ,4)*100 
FSNdis = round( ( FSN[length(FSN$Close),1] - max(FSN$Close) ) / FSN[length(FSN$Close),1] ,4)*100 
MWCdis = round( ( MWC[length(MWC$Close),1] - max(MWC$Close) ) / MWC[length(MWC$Close),1] ,4)*100 
KDAdis = round( ( KDA[length(KDA$Close),1] - max(KDA$Close) ) / KDA[length(KDA$Close),1] ,4)*100 
ERGdis = round( ( ERG[length(ERG$Close),1] - max(ERG$Close) ) / ERG[length(ERG$Close),1] ,4)*100 
TTdis = round( ( TT[length(TT$Close),1] - max(TT$Close) ) / TT[length(TT$Close),1] ,4)*100 
WTCdis = round( ( WTC[length(WTC$Close),1] - max(WTC$Close) ) / WTC[length(WTC$Close),1] ,4)*100 
SRKdis = round( ( SRK[length(SRK$Close),1] - max(SRK$Close) ) / SRK[length(SRK$Close),1] ,4)*100 
PIVXdis = round( ( PIVX[length(PIVX$Close),1] - max(PIVX$Close) ) / PIVX[length(PIVX$Close),1] ,4)*100 
APLdis = round( ( APL[length(APL$Close),1] - max(APL$Close) ) / APL[length(APL$Close),1] ,4)*100 
NULSdis = round( ( NULS[length(NULS$Close),1] - max(NULS$Close) ) / NULS[length(NULS$Close),1] ,4)*100 
NXSdis = round( ( NXS[length(NXS$Close),1] - max(NXS$Close) ) / NXS[length(NXS$Close),1] ,4)*100 
XNCdis = round( ( XNC[length(XNC$Close),1] - max(XNC$Close) ) / XNC[length(XNC$Close),1] ,4)*100 
ZNNdis = round( ( ZNN[length(ZNN$Close),1] - max(ZNN$Close) ) / ZNN[length(ZNN$Close),1] ,4)*100 
GRSdis = round( ( GRS[length(GRS$Close),1] - max(GRS$Close) ) / GRS[length(GRS$Close),1] ,4)*100 
SEROdis = round( ( SERO[length(SERO$Close),1] - max(SERO$Close) ) / SERO[length(SERO$Close),1] ,4)*100 
WOZXdis = round( ( WOZX[length(WOZX$Close),1] - max(WOZX$Close) ) / WOZX[length(WOZX$Close),1] ,4)*100 
EMC2dis = round( ( EMC2[length(EMC2$Close),1] - max(EMC2$Close) ) / EMC2[length(EMC2$Close),1] ,4)*100 
WICCdis = round( ( WICC[length(WICC$Close),1] - max(WICC$Close) ) / WICC[length(WICC$Close),1] ,4)*100 
DAGdis = round( ( DAG[length(DAG$Close),1] - max(DAG$Close) ) / DAG[length(DAG$Close),1] ,4)*100 
SOLVEdis = round( ( SOLVE[length(SOLVE$Close),1] - max(SOLVE$Close) ) / SOLVE[length(SOLVE$Close),1] ,4)*100 
LBCdis = round( ( LBC[length(LBC$Close),1] - max(LBC$Close) ) / LBC[length(LBC$Close),1] ,4)*100 
CTXCdis = round( ( CTXC[length(CTXC$Close),1] - max(CTXC$Close) ) / CTXC[length(CTXC$Close),1] ,4)*100 
VTCdis = round( ( VTC[length(VTC$Close),1] - max(VTC$Close) ) / VTC[length(VTC$Close),1] ,4)*100 
VITEdis = round( ( VITE[length(VITE$Close),1] - max(VITE$Close) ) / VITE[length(VITE$Close),1] ,4)*100 
HCdis = round( ( HC[length(HC$Close),1] - max(HC$Close) ) / HC[length(HC$Close),1] ,4)*100 
PAIdis = round( ( PAI[length(PAI$Close),1] - max(PAI$Close) ) / PAI[length(PAI$Close),1] ,4)*100 
VSYSdis = round( ( VSYS[length(VSYS$Close),1] - max(VSYS$Close) ) / VSYS[length(VSYS$Close),1] ,4)*100 
RBTCdis = round( ( RBTC[length(RBTC$Close),1] - max(RBTC$Close) ) / RBTC[length(RBTC$Close),1] ,4)*100 
MHCdis = round( ( MHC[length(MHC$Close),1] - max(MHC$Close) ) / MHC[length(MHC$Close),1] ,4)*100 
AXELdis = round( ( AXEL[length(AXEL$Close),1] - max(AXEL$Close) ) / AXEL[length(AXEL$Close),1] ,4)*100 
PCXdis = round( ( PCX[length(PCX$Close),1] - max(PCX$Close) ) / PCX[length(PCX$Close),1] ,4)*100 
DEROdis = round( ( DERO[length(DERO$Close),1] - max(DERO$Close) ) / DERO[length(DERO$Close),1] ,4)*100 
FIOdis = round( ( FIO[length(FIO$Close),1] - max(FIO$Close) ) / FIO[length(FIO$Close),1] ,4)*100 
NIMdis = round( ( NIM[length(NIM$Close),1] - max(NIM$Close) ) / NIM[length(NIM$Close),1] ,4)*100 
GRNdis = round( ( GRN[length(GRN$Close),1] - max(GRN$Close) ) / GRN[length(GRN$Close),1] ,4)*100 
MASSdis = round( ( MASS[length(MASS$Close),1] - max(MASS$Close) ) / MASS[length(MASS$Close),1] ,4)*100 
GXCdis = round( ( GXC[length(GXC$Close),1] - max(GXC$Close) ) / GXC[length(GXC$Close),1] ,4)*100 
NXTdis = round( ( NXT[length(NXT$Close),1] - max(NXT$Close) ) / NXT[length(NXT$Close),1] ,4)*100 
SKYdis = round( ( SKY[length(SKY$Close),1] - max(SKY$Close) ) / SKY[length(SKY$Close),1] ,4)*100 
DGDdis = round( ( DGD[length(DGD$Close),1] - max(DGD$Close) ) / DGD[length(DGD$Close),1] ,4)*100 
OBSRdis = round( ( OBSR[length(OBSR$Close),1] - max(OBSR$Close) ) / OBSR[length(OBSR$Close),1] ,4)*100 
BDXdis = round( ( BDX[length(BDX$Close),1] - max(BDX$Close) ) / BDX[length(BDX$Close),1] ,4)*100 
BIPdis = round( ( BIP[length(BIP$Close),1] - max(BIP$Close) ) / BIP[length(BIP$Close),1] ,4)*100 
WABIdis = round( ( WABI[length(WABI$Close),1] - max(WABI$Close) ) / WABI[length(WABI$Close),1] ,4)*100 
NEBLdis = round( ( NEBL[length(NEBL$Close),1] - max(NEBL$Close) ) / NEBL[length(NEBL$Close),1] ,4)*100 
NASdis = round( ( NAS[length(NAS$Close),1] - max(NAS$Close) ) / NAS[length(NAS$Close),1] ,4)*100 
GRINdis = round( ( GRIN[length(GRIN$Close),1] - max(GRIN$Close) ) / GRIN[length(GRIN$Close),1] ,4)*100 
GOdis = round( ( GO[length(GO$Close),1] - max(GO$Close) ) / GO[length(GO$Close),1] ,4)*100 
DCNdis = round( ( DCN[length(DCN$Close),1] - max(DCN$Close) ) / DCN[length(DCN$Close),1] ,4)*100 
GBYTEdis = round( ( GBYTE[length(GBYTE$Close),1] - max(GBYTE$Close) ) / GBYTE[length(GBYTE$Close),1] ,4)*100 
SBDdis = round( ( SBD[length(SBD$Close),1] - max(SBD$Close) ) / SBD[length(SBD$Close),1] ,4)*100 
SALTdis = round( ( SALT[length(SALT$Close),1] - max(SALT$Close) ) / SALT[length(SALT$Close),1] ,4)*100 
CETdis = round( ( CET[length(CET$Close),1] - max(CET$Close) ) / CET[length(CET$Close),1] ,4)*100 
KRTdis = round( ( KRT[length(KRT$Close),1] - max(KRT$Close) ) / KRT[length(KRT$Close),1] ,4)*100 
NAVdis = round( ( NAV[length(NAV$Close),1] - max(NAV$Close) ) / NAV[length(NAV$Close),1] ,4)*100 
VERIdis = round( ( VERI[length(VERI$Close),1] - max(VERI$Close) ) / VERI[length(VERI$Close),1] ,4)*100 
XSNdis = round( ( XSN[length(XSN$Close),1] - max(XSN$Close) ) / XSN[length(XSN$Close),1] ,4)*100 
PZMdis = round( ( PZM[length(PZM$Close),1] - max(PZM$Close) ) / PZM[length(PZM$Close),1] ,4)*100 
QASHdis = round( ( QASH[length(QASH$Close),1] - max(QASH$Close) ) / QASH[length(QASH$Close),1] ,4)*100 
PIdis = round( ( PI[length(PI$Close),1] - max(PI$Close) ) / PI[length(PI$Close),1] ,4)*100 
AEONdis = round( ( AEON[length(AEON$Close),1] - max(AEON$Close) ) / AEON[length(AEON$Close),1] ,4)*100 
VIAdis = round( ( VIA[length(VIA$Close),1] - max(VIA$Close) ) / VIA[length(VIA$Close),1] ,4)*100 
GAMEdis = round( ( GAME[length(GAME$Close),1] - max(GAME$Close) ) / GAME[length(GAME$Close),1] ,4)*100 
XDNdis = round( ( XDN[length(XDN$Close),1] - max(XDN$Close) ) / XDN[length(XDN$Close),1] ,4)*100 
VITAEdis = round( ( VITAE[length(VITAE$Close),1] - max(VITAE$Close) ) / VITAE[length(VITAE$Close),1] ,4)*100 
QRLdis = round( ( QRL[length(QRL$Close),1] - max(QRL$Close) ) / QRL[length(QRL$Close),1] ,4)*100 
FCTdis = round( ( FCT[length(FCT$Close),1] - max(FCT$Close) ) / FCT[length(FCT$Close),1] ,4)*100 
CUTdis = round( ( CUT[length(CUT$Close),1] - max(CUT$Close) ) / CUT[length(CUT$Close),1] ,4)*100 
NMCdis = round( ( NMC[length(NMC$Close),1] - max(NMC$Close) ) / NMC[length(NMC$Close),1] ,4)*100 
DMCHdis = round( ( DMCH[length(DMCH$Close),1] - max(DMCH$Close) ) / DMCH[length(DMCH$Close),1] ,4)*100 
RINGXdis = round( ( RINGX[length(RINGX$Close),1] - max(RINGX$Close) ) / RINGX[length(RINGX$Close),1] ,4)*100 
BHDdis = round( ( BHD[length(BHD$Close),1] - max(BHD$Close) ) / BHD[length(BHD$Close),1] ,4)*100 
ETPdis = round( ( ETP[length(ETP$Close),1] - max(ETP$Close) ) / ETP[length(ETP$Close),1] ,4)*100 
ZANOdis = round( ( ZANO[length(ZANO$Close),1] - max(ZANO$Close) ) / ZANO[length(ZANO$Close),1] ,4)*100 
PPCdis = round( ( PPC[length(PPC$Close),1] - max(PPC$Close) ) / PPC[length(PPC$Close),1] ,4)*100 
WGRdis = round( ( WGR[length(WGR$Close),1] - max(WGR$Close) ) / WGR[length(WGR$Close),1] ,4)*100 
BLOCKdis = round( ( BLOCK[length(BLOCK$Close),1] - max(BLOCK$Close) ) / BLOCK[length(BLOCK$Close),1] ,4)*100 
PARTdis = round( ( PART[length(PART$Close),1] - max(PART$Close) ) / PART[length(PART$Close),1] ,4)*100 
BURSTdis = round( ( BURST[length(BURST$Close),1] - max(BURST$Close) ) / BURST[length(BURST$Close),1] ,4)*100 
DYNdis = round( ( DYN[length(DYN$Close),1] - max(DYN$Close) ) / DYN[length(DYN$Close),1] ,4)*100 
SMARTdis = round( ( SMART[length(SMART$Close),1] - max(SMART$Close) ) / SMART[length(SMART$Close),1] ,4)*100 
POAdis = round( ( POA[length(POA$Close),1] - max(POA$Close) ) / POA[length(POA$Close),1] ,4)*100 
HPBdis = round( ( HPB[length(HPB$Close),1] - max(HPB$Close) ) / HPB[length(HPB$Close),1] ,4)*100 
BEPROdis = round( ( BEPRO[length(BEPRO$Close),1] - max(BEPRO$Close) ) / BEPRO[length(BEPRO$Close),1] ,4)*100 
FCTdis = round( ( FCT[length(FCT$Close),1] - max(FCT$Close) ) / FCT[length(FCT$Close),1] ,4)*100 
MANdis = round( ( MAN[length(MAN$Close),1] - max(MAN$Close) ) / MAN[length(MAN$Close),1] ,4)*100 
ZYNdis = round( ( ZYN[length(ZYN$Close),1] - max(ZYN$Close) ) / ZYN[length(ZYN$Close),1] ,4)*100 
PAYdis = round( ( PAY[length(PAY$Close),1] - max(PAY$Close) ) / PAY[length(PAY$Close),1] ,4)*100 
UBQdis = round( ( UBQ[length(UBQ$Close),1] - max(UBQ$Close) ) / UBQ[length(UBQ$Close),1] ,4)*100 
ACTdis = round( ( ACT[length(ACT$Close),1] - max(ACT$Close) ) / ACT[length(ACT$Close),1] ,4)*100 
RSTRdis = round( ( RSTR[length(RSTR$Close),1] - max(RSTR$Close) ) / RSTR[length(RSTR$Close),1] ,4)*100 
TRUEdis = round( ( TRUE[length(TRUE$Close),1] - max(TRUE$Close) ) / TRUE[length(TRUE$Close),1] ,4)*100 
ADKdis = round( ( ADK[length(ADK$Close),1] - max(ADK$Close) ) / ADK[length(ADK$Close),1] ,4)*100 
NLGdis = round( ( NLG[length(NLG$Close),1] - max(NLG$Close) ) / NLG[length(NLG$Close),1] ,4)*100 
NIXdis = round( ( NIX[length(NIX$Close),1] - max(NIX$Close) ) / NIX[length(NIX$Close),1] ,4)*100 
HTMLdis = round( ( HTML[length(HTML$Close),1] - max(HTML$Close) ) / HTML[length(HTML$Close),1] ,4)*100 
BPSdis = round( ( BPS[length(BPS$Close),1] - max(BPS$Close) ) / BPS[length(BPS$Close),1] ,4)*100 
NVTdis = round( ( NVT[length(NVT$Close),1] - max(NVT$Close) ) / NVT[length(NVT$Close),1] ,4)*100 
MRXdis = round( ( MRX[length(MRX$Close),1] - max(MRX$Close) ) / MRX[length(MRX$Close),1] ,4)*100 
YOYOWdis = round( ( YOYOW[length(YOYOW$Close),1] - max(YOYOW$Close) ) / YOYOW[length(YOYOW$Close),1] ,4)*100 
ACHdis = round( ( ACH[length(ACH$Close),1] - max(ACH$Close) ) / ACH[length(ACH$Close),1] ,4)*100 
CHIdis = round( ( CHI[length(CHI$Close),1] - max(CHI$Close) ) / CHI[length(CHI$Close),1] ,4)*100 
SNGLSdis = round( ( SNGLS[length(SNGLS$Close),1] - max(SNGLS$Close) ) / SNGLS[length(SNGLS$Close),1] ,4)*100 
TERAdis = round( ( TERA[length(TERA$Close),1] - max(TERA$Close) ) / TERA[length(TERA$Close),1] ,4)*100 
PLCdis = round( ( PLC[length(PLC$Close),1] - max(PLC$Close) ) / PLC[length(PLC$Close),1] ,4)*100 
SFTdis = round( ( SFT[length(SFT$Close),1] - max(SFT$Close) ) / SFT[length(SFT$Close),1] ,4)*100 
MINTdis = round( ( MINT[length(MINT$Close),1] - max(MINT$Close) ) / MINT[length(MINT$Close),1] ,4)*100 
XLTdis = round( ( XLT[length(XLT$Close),1] - max(XLT$Close) ) / XLT[length(XLT$Close),1] ,4)*100 
XMYdis = round( ( XMY[length(XMY$Close),1] - max(XMY$Close) ) / XMY[length(XMY$Close),1] ,4)*100 
BHPdis = round( ( BHP[length(BHP$Close),1] - max(BHP$Close) ) / BHP[length(BHP$Close),1] ,4)*100 
FLOdis = round( ( FLO[length(FLO$Close),1] - max(FLO$Close) ) / FLO[length(FLO$Close),1] ,4)*100 
AMBdis = round( ( AMB[length(AMB$Close),1] - max(AMB$Close) ) / AMB[length(AMB$Close),1] ,4)*100 
BTC2dis = round( ( BTC2[length(BTC2$Close),1] - max(BTC2$Close) ) / BTC2[length(BTC2$Close),1] ,4)*100 
GLEECdis = round( ( GLEEC[length(GLEEC$Close),1] - max(GLEEC$Close) ) / GLEEC[length(GLEEC$Close),1] ,4)*100 
XMCdis = round( ( XMC[length(XMC$Close),1] - max(XMC$Close) ) / XMC[length(XMC$Close),1] ,4)*100 
NYZOdis = round( ( NYZO[length(NYZO$Close),1] - max(NYZO$Close) ) / NYZO[length(NYZO$Close),1] ,4)*100 
BLKdis = round( ( BLK[length(BLK$Close),1] - max(BLK$Close) ) / BLK[length(BLK$Close),1] ,4)*100 
FTCdis = round( ( FTC[length(FTC$Close),1] - max(FTC$Close) ) / FTC[length(FTC$Close),1] ,4)*100 
FOdis = round( ( FO[length(FO$Close),1] - max(FO$Close) ) / FO[length(FO$Close),1] ,4)*100 
INTdis = round( ( INT[length(INT$Close),1] - max(INT$Close) ) / INT[length(INT$Close),1] ,4)*100 
IDNAdis = round( ( IDNA[length(IDNA$Close),1] - max(IDNA$Close) ) / IDNA[length(IDNA$Close),1] ,4)*100 
DMDdis = round( ( DMD[length(DMD$Close),1] - max(DMD$Close) ) / DMD[length(DMD$Close),1] ,4)*100 
WINGSdis = round( ( WINGS[length(WINGS$Close),1] - max(WINGS$Close) ) / WINGS[length(WINGS$Close),1] ,4)*100 
PHRdis = round( ( PHR[length(PHR$Close),1] - max(PHR$Close) ) / PHR[length(PHR$Close),1] ,4)*100 
DTEPdis = round( ( DTEP[length(DTEP$Close),1] - max(DTEP$Close) ) / DTEP[length(DTEP$Close),1] ,4)*100 
LCCdis = round( ( LCC[length(LCC$Close),1] - max(LCC$Close) ) / LCC[length(LCC$Close),1] ,4)*100 
GHOSTdis = round( ( GHOST[length(GHOST$Close),1] - max(GHOST$Close) ) / GHOST[length(GHOST$Close),1] ,4)*100 
XSTdis = round( ( XST[length(XST$Close),1] - max(XST$Close) ) / XST[length(XST$Close),1] ,4)*100 
MONAdis = round( ( MONA[length(MONA$Close),1] - max(MONA$Close) ) / MONA[length(MONA$Close),1] ,4)*100 
MIRdis = round( ( MIR[length(MIR$Close),1] - max(MIR$Close) ) / MIR[length(MIR$Close),1] ,4)*100 
OTOdis = round( ( OTO[length(OTO$Close),1] - max(OTO$Close) ) / OTO[length(OTO$Close),1] ,4)*100 
DIMEdis = round( ( DIME[length(DIME$Close),1] - max(DIME$Close) ) / DIME[length(DIME$Close),1] ,4)*100 
AYAdis = round( ( AYA[length(AYA$Close),1] - max(AYA$Close) ) / AYA[length(AYA$Close),1] ,4)*100 
HTDFdis = round( ( HTDF[length(HTDF$Close),1] - max(HTDF$Close) ) / HTDF[length(HTDF$Close),1] ,4)*100 
VEXdis = round( ( VEX[length(VEX$Close),1] - max(VEX$Close) ) / VEX[length(VEX$Close),1] ,4)*100 
INSTARdis = round( ( INSTAR[length(INSTAR$Close),1] - max(INSTAR$Close) ) / INSTAR[length(INSTAR$Close),1] ,4)*100 
ILCdis = round( ( ILC[length(ILC$Close),1] - max(ILC$Close) ) / ILC[length(ILC$Close),1] ,4)*100 
XBYdis = round( ( XBY[length(XBY$Close),1] - max(XBY$Close) ) / XBY[length(XBY$Close),1] ,4)*100 
USNBTdis = round( ( USNBT[length(USNBT$Close),1] - max(USNBT$Close) ) / USNBT[length(USNBT$Close),1] ,4)*100 
SCPdis = round( ( SCP[length(SCP$Close),1] - max(SCP$Close) ) / SCP[length(SCP$Close),1] ,4)*100 
CRWdis = round( ( CRW[length(CRW$Close),1] - max(CRW$Close) ) / CRW[length(CRW$Close),1] ,4)*100 
XRCdis = round( ( XRC[length(XRC$Close),1] - max(XRC$Close) ) / XRC[length(XRC$Close),1] ,4)*100 
GRCdis = round( ( GRC[length(GRC$Close),1] - max(GRC$Close) ) / GRC[length(GRC$Close),1] ,4)*100 
FAIRdis = round( ( FAIR[length(FAIR$Close),1] - max(FAIR$Close) ) / FAIR[length(FAIR$Close),1] ,4)*100 
IOCdis = round( ( IOC[length(IOC$Close),1] - max(IOC$Close) ) / IOC[length(IOC$Close),1] ,4)*100 
BCAdis = round( ( BCA[length(BCA$Close),1] - max(BCA$Close) ) / BCA[length(BCA$Close),1] ,4)*100 
CUREdis = round( ( CURE[length(CURE$Close),1] - max(CURE$Close) ) / CURE[length(CURE$Close),1] ,4)*100 
FLASHdis = round( ( FLASH[length(FLASH$Close),1] - max(FLASH$Close) ) / FLASH[length(FLASH$Close),1] ,4)*100 
HYCdis = round( ( HYC[length(HYC$Close),1] - max(HYC$Close) ) / HYC[length(HYC$Close),1] ,4)*100 
VINdis = round( ( VIN[length(VIN$Close),1] - max(VIN$Close) ) / VIN[length(VIN$Close),1] ,4)*100 
SUBdis = round( ( SUB[length(SUB$Close),1] - max(SUB$Close) ) / SUB[length(SUB$Close),1] ,4)*100 
QRKdis = round( ( QRK[length(QRK$Close),1] - max(QRK$Close) ) / QRK[length(QRK$Close),1] ,4)*100 
BPCdis = round( ( BPC[length(BPC$Close),1] - max(BPC$Close) ) / BPC[length(BPC$Close),1] ,4)*100 
CHIdis = round( ( CHI[length(CHI$Close),1] - max(CHI$Close) ) / CHI[length(CHI$Close),1] ,4)*100 
XASdis = round( ( XAS[length(XAS$Close),1] - max(XAS$Close) ) / XAS[length(XAS$Close),1] ,4)*100 
MGOdis = round( ( MGO[length(MGO$Close),1] - max(MGO$Close) ) / MGO[length(MGO$Close),1] ,4)*100 
PMEERdis = round( ( PMEER[length(PMEER$Close),1] - max(PMEER$Close) ) / PMEER[length(PMEER$Close),1] ,4)*100 
GHOSTdis = round( ( GHOST[length(GHOST$Close),1] - max(GHOST$Close) ) / GHOST[length(GHOST$Close),1] ,4)*100 
OWCdis = round( ( OWC[length(OWC$Close),1] - max(OWC$Close) ) / OWC[length(OWC$Close),1] ,4)*100 
POLISdis = round( ( POLIS[length(POLIS$Close),1] - max(POLIS$Close) ) / POLIS[length(POLIS$Close),1] ,4)*100 
MBCdis = round( ( MBC[length(MBC$Close),1] - max(MBC$Close) ) / MBC[length(MBC$Close),1] ,4)*100 
ERKdis = round( ( ERK[length(ERK$Close),1] - max(ERK$Close) ) / ERK[length(ERK$Close),1] ,4)*100 
DDKdis = round( ( DDK[length(DDK$Close),1] - max(DDK$Close) ) / DDK[length(DDK$Close),1] ,4)*100 
EDGdis = round( ( EDG[length(EDG$Close),1] - max(EDG$Close) ) / EDG[length(EDG$Close),1] ,4)*100 
NPCdis = round( ( NPC[length(NPC$Close),1] - max(NPC$Close) ) / NPC[length(NPC$Close),1] ,4)*100 
HSSdis = round( ( HSS[length(HSS$Close),1] - max(HSS$Close) ) / HSS[length(HSS$Close),1] ,4)*100 
OUROdis = round( ( OURO[length(OURO$Close),1] - max(OURO$Close) ) / OURO[length(OURO$Close),1] ,4)*100 
COMPdis = round( ( COMP[length(COMP$Close),1] - max(COMP$Close) ) / COMP[length(COMP$Close),1] ,4)*100 
FRSTdis = round( ( FRST[length(FRST$Close),1] - max(FRST$Close) ) / FRST[length(FRST$Close),1] ,4)*100 
ATBdis = round( ( ATB[length(ATB$Close),1] - max(ATB$Close) ) / ATB[length(ATB$Close),1] ,4)*100 
DMDdis = round( ( DMD[length(DMD$Close),1] - max(DMD$Close) ) / DMD[length(DMD$Close),1] ,4)*100 
FAIRdis = round( ( FAIR[length(FAIR$Close),1] - max(FAIR$Close) ) / FAIR[length(FAIR$Close),1] ,4)*100 
BTSdis = round( ( BTS[length(BTS$Close),1] - max(BTS$Close) ) / BTS[length(BTS$Close),1] ,4)*100 
BSTdis = round( ( BST[length(BST$Close),1] - max(BST$Close) ) / BST[length(BST$Close),1] ,4)*100 
BCAdis = round( ( BCA[length(BCA$Close),1] - max(BCA$Close) ) / BCA[length(BCA$Close),1] ,4)*100 
CCAdis = round( ( CCA[length(CCA$Close),1] - max(CCA$Close) ) / CCA[length(CCA$Close),1] ,4)*100 
UNOdis = round( ( UNO[length(UNO$Close),1] - max(UNO$Close) ) / UNO[length(UNO$Close),1] ,4)*100 
FAIRdis = round( ( FAIR[length(FAIR$Close),1] - max(FAIR$Close) ) / FAIR[length(FAIR$Close),1] ,4)*100 
SALTdis = round( ( SALT[length(SALT$Close),1] - max(SALT$Close) ) / SALT[length(SALT$Close),1] ,4)*100 
PPCdis = round( ( PPC[length(PPC$Close),1] - max(PPC$Close) ) / PPC[length(PPC$Close),1] ,4)*100 
LRGdis = round( ( LRG[length(LRG$Close),1] - max(LRG$Close) ) / LRG[length(LRG$Close),1] ,4)*100 
TUBEdis = round( ( TUBE[length(TUBE$Close),1] - max(TUBE$Close) ) / TUBE[length(TUBE$Close),1] ,4)*100 
JDCdis = round( ( JDC[length(JDC$Close),1] - max(JDC$Close) ) / JDC[length(JDC$Close),1] ,4)*100 
MIDASdis = round( ( MIDAS[length(MIDAS$Close),1] - max(MIDAS$Close) ) / MIDAS[length(MIDAS$Close),1] ,4)*100 
ALIASdis = round( ( ALIAS[length(ALIAS$Close),1] - max(ALIAS$Close) ) / ALIAS[length(ALIAS$Close),1] ,4)*100 
BTXdis = round( ( BTX[length(BTX$Close),1] - max(BTX$Close) ) / BTX[length(BTX$Close),1] ,4)*100 
UNOdis = round( ( UNO[length(UNO$Close),1] - max(UNO$Close) ) / UNO[length(UNO$Close),1] ,4)*100 
AIBdis = round( ( AIB[length(AIB$Close),1] - max(AIB$Close) ) / AIB[length(AIB$Close),1] ,4)*100 
SPHRdis = round( ( SPHR[length(SPHR$Close),1] - max(SPHR$Close) ) / SPHR[length(SPHR$Close),1] ,4)*100 
XCPdis = round( ( XCP[length(XCP$Close),1] - max(XCP$Close) ) / XCP[length(XCP$Close),1] ,4)*100 
LKKdis = round( ( LKK[length(LKK$Close),1] - max(LKK$Close) ) / LKK[length(LKK$Close),1] ,4)*100 
ECCdis = round( ( ECC[length(ECC$Close),1] - max(ECC$Close) ) / ECC[length(ECC$Close),1] ,4)*100 
ANTdis = round( ( ANT[length(ANT$Close),1] - max(ANT$Close) ) / ANT[length(ANT$Close),1] ,4)*100 
VBKdis = round( ( VBK[length(VBK$Close),1] - max(VBK$Close) ) / VBK[length(VBK$Close),1] ,4)*100 
CUREdis = round( ( CURE[length(CURE$Close),1] - max(CURE$Close) ) / CURE[length(CURE$Close),1] ,4)*100 
SLSdis = round( ( SLS[length(SLS$Close),1] - max(SLS$Close) ) / SLS[length(SLS$Close),1] ,4)*100 
FLOdis = round( ( FLO[length(FLO$Close),1] - max(FLO$Close) ) / FLO[length(FLO$Close),1] ,4)*100 
COLXdis = round( ( COLX[length(COLX$Close),1] - max(COLX$Close) ) / COLX[length(COLX$Close),1] ,4)*100 
NLC2dis = round( ( NLC2[length(NLC2$Close),1] - max(NLC2$Close) ) / NLC2[length(NLC2$Close),1] ,4)*100 
FLASHdis = round( ( FLASH[length(FLASH$Close),1] - max(FLASH$Close) ) / FLASH[length(FLASH$Close),1] ,4)*100 
BSTdis = round( ( BST[length(BST$Close),1] - max(BST$Close) ) / BST[length(BST$Close),1] ,4)*100 
ECAdis = round( ( ECA[length(ECA$Close),1] - max(ECA$Close) ) / ECA[length(ECA$Close),1] ,4)*100 
MINTdis = round( ( MINT[length(MINT$Close),1] - max(MINT$Close) ) / MINT[length(MINT$Close),1] ,4)*100 
DCYdis = round( ( DCY[length(DCY$Close),1] - max(DCY$Close) ) / DCY[length(DCY$Close),1] ,4)*100 
CLAMdis = round( ( CLAM[length(CLAM$Close),1] - max(CLAM$Close) ) / CLAM[length(CLAM$Close),1] ,4)*100 
BONOdis = round( ( BONO[length(BONO$Close),1] - max(BONO$Close) ) / BONO[length(BONO$Close),1] ,4)*100 
SHIFTdis = round( ( SHIFT[length(SHIFT$Close),1] - max(SHIFT$Close) ) / SHIFT[length(SHIFT$Close),1] ,4)*100 
DUNdis = round( ( DUN[length(DUN$Close),1] - max(DUN$Close) ) / DUN[length(DUN$Close),1] ,4)*100 
RBYdis = round( ( RBY[length(RBY$Close),1] - max(RBY$Close) ) / RBY[length(RBY$Close),1] ,4)*100 
MOACdis = round( ( MOAC[length(MOAC$Close),1] - max(MOAC$Close) ) / MOAC[length(MOAC$Close),1] ,4)*100 
BRCdis = round( ( BRC[length(BRC$Close),1] - max(BRC$Close) ) / BRC[length(BRC$Close),1] ,4)*100 
SAPPdis = round( ( SAPP[length(SAPP$Close),1] - max(SAPP$Close) ) / SAPP[length(SAPP$Close),1] ,4)*100 
MBCdis = round( ( MBC[length(MBC$Close),1] - max(MBC$Close) ) / MBC[length(MBC$Close),1] ,4)*100 


# --------------------------------------------------------------------------------------- #

# Se crea un data frame con los valores de las variaciones

Criptos = c(
"BTC",
"ETH",
"BNB",
"DOGE",
"XRP",
"USDT",
"ADA",
"LTC",
"LINK",
"BCH",
"USDC",
"VET",
"XLM",
"THETA",
"FIL",
"TRX",
"ETC",
"NEO",
"XMR",
"EOS",
"BSV",
"AAVE",
"MKR",
"MIOTA",
"XTZ",
"CRO",
"AVAX",
"DASH",
"ALGO",
"WAVES",
"MATIC",
"COMP",
"KSM",
"EGLD",
"ZEC",
"XEM",
"CHZ",
"DCR",
"HBAR",
"ZIL",
"MANA",
"ENJ",
"DGB",
"BTG",
"SNX",
"YFI",
"TFUEL",
"BAT",
"SC",
"SUSHI",
"ONT",
"UMA",
"RVN",
"CEL",
"QTUM",
"ICX",
"ZRX",
"OMG",
"BNT",
"ZEN",
"NANO",
"CELO",
"ANKR",
"REV",
"IOST",
"TUSD",
"VGX",
"AR",
"CRV",
"XVG",
"LSK",
"CKB",
"LRC",
"KNC",
"ABBC",
"SNT",
"VTHO",
"BCD",
"SRM",
"STORJ",
"IOTX",
"QNT",
"GLM",
"REP",
"FET",
"EWT",
"FUN",
"WAXP",
"NKN",
"MAID",
"BAND",
"MCO",
"STRAX",
"SYS",
"RLC",
"KIN",
"BTS",
"GNO",
"CVC",
"ARDR",
"KAVA",
"ANT",
"MED",
"KMD",
"STEEM",
"NU",
"XHV",
"SNM",
"VLX",
"HNS",
"WAN",
"BTM",
"AVA",
"ARK",
"MTL",
"META",
"PPT",
"HIVE",
"COTI",
"OXT",
"HEX",
"CCXX",
"DFI",
"XWC",
"ARRR",
"XDC",
"MIR",
"ETN",
"ATRI",
"HNC",
"TWT",
"COTI",
"TOMO",
"RDD",
"MLN",
"IRIS",
"MARO",
"REV",
"DNT",
"BCN",
"PAC",
"CRU",
"MONA",
"AION",
"ELA",
"NYE",
"DIVI",
"FIRO",
"GAS",
"PHA",
"ADX",
"SAPP",
"NRG",
"VRA",
"CSC",
"BEAM",
"EDG",
"AE",
"FSN",
"MWC",
"KDA",
"ERG",
"TT",
"WTC",
"SRK",
"PIVX",
"APL",
"NULS",
"NXS",
"XNC",
"ZNN",
"GRS",
"SERO",
"WOZX",
"EMC2",
"WICC",
"DAG",
"SOLVE",
"LBC",
"CTXC",
"VTC",
"VITE",
"HC",
"PAI",
"VSYS",
"RBTC",
"MHC",
"AXEL",
"PCX",
"DERO",
"FIO",
"NIM",
"GRN",
"MASS",
"GXC",
"NXT",
"SKY",
"DGD",
"OBSR",
"BDX",
"BIP",
"WABI",
"NEBL",
"NAS",
"GRIN",
"GO",
"DCN",
"GBYTE",
"SBD",
"SALT",
"CET",
"KRT",
"NAV",
"VERI",
"XSN",
"PZM",
"QASH",
"PI",
"AEON",
"VIA",
"GAME",
"XDN",
"VITAE",
"QRL",
"FCT",
"CUT",
"NMC",
"DMCH",
"RINGX",
"BHD",
"ETP",
"ZANO",
"PPC",
"WGR",
"BLOCK",
"PART",
"BURST",
"DYN",
"SMART",
"POA",
"HPB",
"BEPRO",
"FCT",
"MAN",
"ZYN",
"PAY",
"UBQ",
"ACT",
"RSTR",
"ADK",
"NLG",
"NIX",
"HTML",
"BPS",
"NVT",
"MRX",
"YOYOW",
"ACH",
"CHI",
"SNGLS",
"TERA",
"PLC",
"SFT",
"MINT",
"XLT",
"XMY",
"BHP",
"FLO",
"AMB",
"BTC2",
"GLEEC",
"XMC",
"NYZO",
"BLK",
"FTC",
"FO",
"INT",
"IDNA",
"DMD",
"WINGS",
"PHR",
"DTEP",
"LCC",
"GHOST",
"XST",
"MONA",
"MIR",
"OTO",
"DIME",
"AYA",
"HTDF",
"VEX",
"INSTAR",
"ILC",
"XBY",
"USNBT",
"SCP",
"CRW",
"XRC",
"GRC",
"FAIR",
"IOC",
"BCA",
"CURE",
"FLASH",
"HYC",
"VIN",
"SUB",
"QRK",
"BPC",
"CHI",
"XAS",
"MGO",
"PMEER",
"GHOST",
"OWC",
"POLIS",
"MBC",
"ERK",
"DDK",
"EDG",
"NPC",
"HSS",
"OURO",
"COMP",
"FRST",
"ATB",
"DMD",
"FAIR",
"BTS",
"BST",
"BCA",
"CCA",
"UNO",
"FAIR",
"SALT",
"PPC",
"LRG",
"TUBE",
"JDC",
"MIDAS",
"ALIAS",
"BTX",
"UNO",
"AIB",
"SPHR",
"XCP",
"LKK",
"ECC",
"ANT",
"VBK",
"CURE",
"SLS",
"FLO",
"COLX",
"NLC2",
"FLASH",
"BST",
"ECA",
"MINT",
"DCY",
"CLAM",
"BONO",
"SHIFT",
"DUN",
"RBY",
"MOAC",
"BRC",
"SAPP",
"MBC")


Distancias = c(
BTCdis,
ETHdis,
BNBdis,
DOGEdis,
XRPdis,
USDTdis,
ADAdis,
LTCdis,
LINKdis,
BCHdis,
USDCdis,
VETdis,
XLMdis,
THETAdis,
FILdis,
TRXdis,
ETCdis,
NEOdis,
XMRdis,
EOSdis,
BSVdis,
AAVEdis,
MKRdis,
MIOTAdis,
XTZdis,
CROdis,
AVAXdis,
DASHdis,
ALGOdis,
WAVESdis,
MATICdis,
COMPdis,
KSMdis,
EGLDdis,
ZECdis,
XEMdis,
CHZdis,
DCRdis,
HBARdis,
ZILdis,
MANAdis,
ENJdis,
DGBdis,
BTGdis,
SNXdis,
YFIdis,
TFUELdis,
BATdis,
SCdis,
SUSHIdis,
ONTdis,
UMAdis,
RVNdis,
CELdis,
QTUMdis,
ICXdis,
ZRXdis,
OMGdis,
BNTdis,
ZENdis,
NANOdis,
CELOdis,
ANKRdis,
REVdis,
IOSTdis,
TUSDdis,
VGXdis,
ARdis,
CRVdis,
XVGdis,
LSKdis,
CKBdis,
LRCdis,
KNCdis,
ABBCdis,
SNTdis,
VTHOdis,
BCDdis,
SRMdis,
STORJdis,
IOTXdis,
QNTdis,
GLMdis,
REPdis,
FETdis,
EWTdis,
FUNdis,
WAXPdis,
NKNdis,
MAIDdis,
BANDdis,
MCOdis,
STRAXdis,
SYSdis,
RLCdis,
KINdis,
BTSdis,
GNOdis,
CVCdis,
ARDRdis,
KAVAdis,
ANTdis,
MEDdis,
KMDdis,
STEEMdis,
NUdis,
XHVdis,
SNMdis,
VLXdis,
HNSdis,
WANdis,
BTMdis,
AVAdis,
ARKdis,
MTLdis,
METAdis,
PPTdis,
HIVEdis,
COTIdis,
OXTdis,
HEXdis,
CCXXdis,
DFIdis,
XWCdis,
ARRRdis,
XDCdis,
MIRdis,
ETNdis,
ATRIdis,
HNCdis,
TWTdis,
COTIdis,
TOMOdis,
RDDdis,
MLNdis,
IRISdis,
MAROdis,
REVdis,
DNTdis,
BCNdis,
PACdis,
CRUdis,
MONAdis,
AIONdis,
ELAdis,
NYEdis,
DIVIdis,
FIROdis,
GASdis,
PHAdis,
ADXdis,
SAPPdis,
NRGdis,
VRAdis,
CSCdis,
BEAMdis,
EDGdis,
AEdis,
FSNdis,
MWCdis,
KDAdis,
ERGdis,
TTdis,
WTCdis,
SRKdis,
PIVXdis,
APLdis,
NULSdis,
NXSdis,
XNCdis,
ZNNdis,
GRSdis,
SEROdis,
WOZXdis,
EMC2dis,
WICCdis,
DAGdis,
SOLVEdis,
LBCdis,
CTXCdis,
VTCdis,
VITEdis,
HCdis,
PAIdis,
VSYSdis,
RBTCdis,
MHCdis,
AXELdis,
PCXdis,
DEROdis,
FIOdis,
NIMdis,
GRNdis,
MASSdis,
GXCdis,
NXTdis,
SKYdis,
DGDdis,
OBSRdis,
BDXdis,
BIPdis,
WABIdis,
NEBLdis,
NASdis,
GRINdis,
GOdis,
DCNdis,
GBYTEdis,
SBDdis,
SALTdis,
CETdis,
KRTdis,
NAVdis,
VERIdis,
XSNdis,
PZMdis,
QASHdis,
PIdis,
AEONdis,
VIAdis,
GAMEdis,
XDNdis,
VITAEdis,
QRLdis,
FCTdis,
CUTdis,
NMCdis,
DMCHdis,
RINGXdis,
BHDdis,
ETPdis,
ZANOdis,
PPCdis,
WGRdis,
BLOCKdis,
PARTdis,
BURSTdis,
DYNdis,
SMARTdis,
POAdis,
HPBdis,
BEPROdis,
FCTdis,
MANdis,
ZYNdis,
PAYdis,
UBQdis,
ACTdis,
RSTRdis,
ADKdis,
NLGdis,
NIXdis,
HTMLdis,
BPSdis,
NVTdis,
MRXdis,
YOYOWdis,
ACHdis,
CHIdis,
SNGLSdis,
TERAdis,
PLCdis,
SFTdis,
MINTdis,
XLTdis,
XMYdis,
BHPdis,
FLOdis,
AMBdis,
BTC2dis,
GLEECdis,
XMCdis,
NYZOdis,
BLKdis,
FTCdis,
FOdis,
INTdis,
IDNAdis,
DMDdis,
WINGSdis,
PHRdis,
DTEPdis,
LCCdis,
GHOSTdis,
XSTdis,
MONAdis,
MIRdis,
OTOdis,
DIMEdis,
AYAdis,
HTDFdis,
VEXdis,
INSTARdis,
ILCdis,
XBYdis,
USNBTdis,
SCPdis,
CRWdis,
XRCdis,
GRCdis,
FAIRdis,
IOCdis,
BCAdis,
CUREdis,
FLASHdis,
HYCdis,
VINdis,
SUBdis,
QRKdis,
BPCdis,
CHIdis,
XASdis,
MGOdis,
PMEERdis,
GHOSTdis,
OWCdis,
POLISdis,
MBCdis,
ERKdis,
DDKdis,
EDGdis,
NPCdis,
HSSdis,
OUROdis,
COMPdis,
FRSTdis,
ATBdis,
DMDdis,
FAIRdis,
BTSdis,
BSTdis,
BCAdis,
CCAdis,
UNOdis,
FAIRdis,
SALTdis,
PPCdis,
LRGdis,
TUBEdis,
JDCdis,
MIDASdis,
ALIASdis,
BTXdis,
UNOdis,
AIBdis,
SPHRdis,
XCPdis,
LKKdis,
ECCdis,
ANTdis,
VBKdis,
CUREdis,
SLSdis,
FLOdis,
COLXdis,
NLC2dis,
FLASHdis,
BSTdis,
ECAdis,
MINTdis,
DCYdis,
CLAMdis,
BONOdis,
SHIFTdis,
DUNdis,
RBYdis,
MOACdis,
BRCdis,
SAPPdis,
MBCdis)


# --------------------------------------------------------------------------------------- #

# Se visualiza el df


df = data.frame(Criptos, Distancias)

View(df)

