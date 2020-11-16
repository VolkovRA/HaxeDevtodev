package devtodev.web;

/**
 * Currency code. [(ISO 4217)](https://en.wikipedia.org/wiki/ISO_4217)  
 * It is a standard published by International Organization
 * for Standardization (ISO) that defines alpha codes and numeric codes
 * for the representation of currencies and provides information about
 * the relationships between individual currencies and their minor units.
 */
@:enum abstract CurrencyCode(String) to String from String
{
    /**
     * United Arab Emirates dirham.
     */
    var AED = "AED";

    /**
     * Afghan afghani.
     */
    var AFN = "AFN";

    /**
     * Albanian lek.
     */
    var ALL = "ALL";

    /**
     * Armenian dram.
     */
    var AMD = "AMD";

    /**
     * Netherlands Antillean guilder.
     */
    var ANG = "ANG";

    /**
     * Angolan kwanza.
     */
    var AOA = "AOA";

    /**
     * Argentine peso.
     */
    var ARS = "ARS";

    /**
     * Australian dollar.
     */
    var AUD = "AUD";

    /**
     * Aruban florin.
     */
    var AWG = "AWG";

    /**
     * Azerbaijani manat.
     */
    var AZN = "AZN";

    /**
     * Bosnia and Herzegovina convertible mark.
     */
    var BAM = "BAM";

    /**
     * Barbados dollar.
     */
    var BBD = "BBD";

    /**
     * Bangladeshi taka.
     */
    var BDT = "BDT";

    /**
     * Bulgarian lev.
     */
    var BGN = "BGN";

    /**
     * Bahraini dinar.
     */
    var BHD = "BHD";

    /**
     * Burundian franc.
     */
    var BIF = "BIF";

    /**
     * Bermudian dollar.
     */
    var BMD = "BMD";

    /**
     * Brunei dollar.
     */
    var BND = "BND";

    /**
     * Boliviano.
     */
    var BOB = "BOB";

    /**
     * Bolivian Mvdol. (Funds code)
     */
    var BOV = "BOV";

    /**
     * Brazilian real.
     */
    var BRL = "BRL";

    /**
     * Bahamian dollar.
     */
    var BSD = "BSD";

    /**
     * Bhutanese ngultrum.
     */
    var BTN = "BTN";

    /**
     * Botswana pula.
     */
    var BWP = "BWP";

    /**
     * Belarusian ruble.
     */
    var BYN = "BYN";

    /**
     * Belize dollar.
     */
    var BZD = "BZD";

    /**
     * Canadian dollar.
     */
    var CAD = "CAD";

    /**
     * Congolese franc.
     */
    var CDF = "CDF";

    /**
     * WIR euro. (Complementary currency)
     */
    var CHE = "CHE";

    /**
     * Swiss franc.
     */
    var CHF = "CHF";

    /**
     * WIR franc. (Complementary currency)
     */
    var CHW = "CHW";

    /**
     * Unidad de Fomento. (Funds code)
     */
    var CLF = "CLF";

    /**
     * Chilean peso.
     */
    var CLP = "CLP";

    /**
     * Chinese yuan.
     */
    var CNY = "CNY";

    /**
     * Colombian peso.
     */
    var COP = "COP";

    /**
     * Unidad de Valor Real (UVR) (funds code).
     */
    var COU = "COU";

    /**
     * Costa Rican colon.
     */
    var CRC = "CRC";

    /**
     * Cuban convertible peso.
     */
    var CUC = "CUC";

    /**
     * Cuban peso.
     */
    var CUP = "CUP";

    /**
     * Cape Verdean escudo.
     */
    var CVE = "CVE";

    /**
     * Czech koruna.
     */
    var CZK = "CZK";

    /**
     * Djiboutian franc.
     */
    var DJF = "DJF";

    /**
     * Danish krone.
     */
    var DKK = "DKK";

    /**
     * Dominican peso.
     */
    var DOP = "DOP";

    /**
     * Algerian dinar.
     */
    var DZD = "DZD";

    /**
     * Egyptian pound.
     */
    var EGP = "EGP";

    /**
     * Eritrean nakfa.
     */
    var ERN = "ERN";

    /**
     * Ethiopian birr.
     */
    var ETB = "ETB";

    /**
     * Euro.
     */
    var EUR = "EUR";

    /**
     * Fiji dollar.
     */
    var FJD = "FJD";

    /**
     * Falkland Islands pound.
     */
    var FKP = "FKP";

    /**
     * Pound sterling.
     */
    var GBP = "GBP";

    /**
     * Georgian lari.
     */
    var GEL = "GEL";

    /**
     * Ghanaian cedi.
     */
    var GHS = "GHS";

    /**
     * Gibraltar pound.
     */
    var GIP = "GIP";

    /**
     * Gambian dalasi.
     */
    var GMD = "GMD";

    /**
     * Guinean franc.
     */
    var GNF = "GNF";

    /**
     * Guatemalan quetzal.
     */
    var GTQ = "GTQ";

    /**
     * Guyanese dollar.
     */
    var GYD = "GYD";

    /**
     * Hong Kong dollar.
     */
    var HKD = "HKD";

    /**
     * Honduran lempira.
     */
    var HNL = "HNL";

    /**
     * Croatian kuna.
     */
    var HRK = "HRK";

    /**
     * Haitian gourde.
     */
    var HTG = "HTG";

    /**
     * Hungarian forint.
     */
    var HUF = "HUF";

    /**
     * Indonesian rupiah.
     */
    var IDR = "IDR";

    /**
     * Israeli new shekel.
     */
    var ILS = "ILS";

    /**
     * Indian rupee.
     */
    var INR = "INR";

    /**
     * Iraqi dinar.
     */
    var IQD = "IQD";

    /**
     * Iranian rial.
     */
    var IRR = "IRR";

    /**
     * Icelandic króna.
     */
    var ISK = "ISK";

    /**
     * Jamaican dollar.
     */
    var JMD = "JMD";

    /**
     * Jordanian dinar.
     */
    var JOD = "JOD";

    /**
     * Japanese yen.
     */
    var JPY = "JPY";

    /**
     * Kenyan shilling.
     */
    var KES = "KES";

    /**
     * Kyrgyzstani som.
     */
    var KGS = "KGS";

    /**
     * Cambodian riel.
     */
    var KHR = "KHR";

    /**
     * Comoro franc.
     */
    var KMF = "KMF";

    /**
     * North Korean won.
     */
    var KPW = "KPW";

    /**
     * South Korean won.
     */
    var KRW = "KRW";

    /**
     * Kuwaiti dinar.
     */
    var KWD = "KWD";

    /**
     * Cayman Islands dollar.
     */
    var KYD = "KYD";

    /**
     * Kazakhstani tenge.
     */
    var KZT = "KZT";

    /**
     * Lao kip.
     */
    var LAK = "LAK";

    /**
     * Lebanese pound.
     */
    var LBP = "LBP";

    /**
     * Sri Lankan rupee.
     */
    var LKR = "LKR";

    /**
     * Liberian dollar.
     */
    var LRD = "LRD";

    /**
     * Lesotho loti.
     */
    var LSL = "LSL";

    /**
     * Libyan dinar.
     */
    var LYD = "LYD";

    /**
     * Moroccan dirham.
     */
    var MAD = "MAD";

    /**
     * Moldovan leu.
     */
    var MDL = "MDL";

    /**
     * Malagasy ariary.
     */
    var MGA = "MGA";

    /**
     * Macedonian denar.
     */
    var MKD = "MKD";

    /**
     * Myanmar kyat.
     */
    var MMK = "MMK";

    /**
     * Mongolian tögrög.
     */
    var MNT = "MNT";

    /**
     * Macanese pataca.
     */
    var MOP = "MOP";

    /**
     * Mauritanian ouguiya.
     */
    var MRU = "MRU";

    /**
     * Mauritian rupee.
     */
    var MUR = "MUR";

    /**
     * Maldivian rufiyaa.
     */
    var MVR = "MVR";

    /**
     * Malawian kwacha.
     */
    var MWK = "MWK";

    /**
     * Mexican peso.
     */
    var MXN = "MXN";

    /**
     * Mexican Unidad de Inversion (UDI) (funds code).
     */
    var MXV = "MXV";

    /**
     * Malaysian ringgit.
     */
    var MYR = "MYR";

    /**
     * Mozambican metical.
     */
    var MZN = "MZN";

    /**
     * Namibian dollar.
     */
    var NAD = "NAD";

    /**
     * Nigerian naira.
     */
    var NGN = "NGN";

    /**
     * Nicaraguan córdoba.
     */
    var NIO = "NIO";

    /**
     * Norwegian krone.
     */
    var NOK = "NOK";

    /**
     * Nepalese rupee.
     */
    var NPR = "NPR";

    /**
     * New Zealand dollar.
     */
    var NZD = "NZD";

    /**
     * Omani rial.
     */
    var OMR = "OMR";

    /**
     * Panamanian balboa.
     */
    var PAB = "PAB";

    /**
     * Peruvian sol.
     */
    var PEN = "PEN";

    /**
     * Papua New Guinean kina.
     */
    var PGK = "PGK";

    /**
     * Philippine peso.
     */
    var PHP = "PHP";

    /**
     * Pakistani rupee.
     */
    var PKR = "PKR";

    /**
     * Polish złoty.
     */
    var PLN = "PLN";

    /**
     * Paraguayan guaraní.
     */
    var PYG = "PYG";

    /**
     * Qatari riyal.
     */
    var QAR = "QAR";

    /**
     * Romanian leu.
     */
    var RON = "RON";

    /**
     * Serbian dinar.
     */
    var RSD = "RSD";

    /**
     * Russian ruble.
     */
    var RUB = "RUB";

    /**
     * Rwandan franc.
     */
    var RWF = "RWF";

    /**
     * Saudi riyal.
     */
    var SAR = "SAR";

    /**
     * Solomon Islands dollar.
     */
    var SBD = "SBD";

    /**
     * Seychelles rupee.
     */
    var SCR = "SCR";

    /**
     * Sudanese pound.
     */
    var SDG = "SDG";

    /**
     * Swedish krona/kronor.
     */
    var SEK = "SEK";

    /**
     * Singapore dollar.
     */
    var SGD = "SGD";

    /**
     * Saint Helena pound.
     */
    var SHP = "SHP";

    /**
     * Sierra Leonean leone.
     */
    var SLL = "SLL";

    /**
     * Somali shilling.
     */
    var SOS = "SOS";

    /**
     * Surinamese dollar.
     */
    var SRD = "SRD";

    /**
     * South Sudanese pound.
     */
    var SSP = "SSP";

    /**
     * São Tomé and Príncipe dobra.
     */
    var STN = "STN";

    /**
     * Salvadoran colón.
     */
    var SVC = "SVC";

    /**
     * Syrian pound.
     */
    var SYP = "SYP";

    /**
     * Swazi lilangeni.
     */
    var SZL = "SZL";

    /**
     * Thai baht.
     */
    var THB = "THB";

    /**
     * Tajikistani somoni.
     */
    var TJS = "TJS";

    /**
     * Turkmenistan manat.
     */
    var TMT = "TMT";

    /**
     * Tunisian dinar.
     */
    var TND = "TND";

    /**
     * Tongan paʻanga.
     */
    var TOP = "TOP";

    /**
     * Turkish lira.
     */
    var TRY = "TRY";

    /**
     * Trinidad and Tobago dollar.
     */
    var TTD = "TTD";

    /**
     * New Taiwan dollar.
     */
    var TWD = "TWD";

    /**
     * Tanzanian shilling.
     */
    var TZS = "TZS";

    /**
     * Ukrainian hryvnia.
     */
    var UAH = "UAH";

    /**
     * Ugandan shilling.
     */
    var UGX = "UGX";

    /**
     * United States dollar.
     */
    var USD = "USD";

    /**
     * United States dollar. (next day) (funds code)
     */
    var USN = "USN";

    /**
     * Uruguay Peso en Unidades Indexadas. (URUIURUI) (funds code)
     */
    var UYI = "UYI";

    /**
     * Uruguayan peso.
     */
    var UYU = "UYU";

    /**
     * Unidad previsional.
     */
    var UYW = "UYW";

    /**
     * Uzbekistan som.
     */
    var UZS = "UZS";

    /**
     * Venezuelan bolívar soberano.
     */
    var VES = "VES";

    /**
     * Vietnamese đồng.
     */
    var VND = "VND";

    /**
     * Vanuatu vatu.
     */
    var VUV = "VUV";

    /**
     * Samoan tala.
     */
    var WST = "WST";

    /**
     * CFA franc BEAC.
     */
    var XAF = "XAF";

    /**
     * Silver. (One troy ounce)
     */
    var XAG = "XAG";

    /**
     * Gold. (One troy ounce)
     */
    var XAU = "XAU";

    /**
     * European Composite Unit. (EURCO) (bond market unit)
     */
    var XBA = "XBA";

    /**
     * European Monetary Unit. (E.M.U.-6) (bond market unit)
     */
    var XBB = "XBB";

    /**
     * European Unit of Account 9. (E.U.A.-9) (bond market unit)
     */
    var XBC = "XBC";

    /**
     * European Unit of Account 17. (E.U.A.-17) (bond market unit)
     */
    var XBD = "XBD";

    /**
     * East Caribbean dollar.
     */
    var XCD = "XCD";

    /**
     * Special drawing rights.
     */
    var XDR = "XDR";

    /**
     * CFA franc BCEAO.
     */
    var XOF = "XOF";

    /**
     * Palladium. (One troy ounce)
     */
    var XPD = "XPD";

    /**
     * CFP franc. (Franc Pacifique)
     */
    var XPF = "XPF";

    /**
     * Platinum. (One troy ounce)
     */
    var XPT = "XPT";

    /**
     * SUCRE.
     */
    var XSU = "XSU";

    /**
     * Code reserved for testing.
     */
    var XTS = "XTS";

    /**
     * ADB Unit of Account.
     */
    var XUA = "XUA";

    /**
     * No currency.
     */
    var XXX = "XXX";

    /**
     * Yemeni rial.
     */
    var YER = "YER";

    /**
     * South African rand.
     */
    var ZAR = "ZAR";

    /**
     * Zambian kwacha.
     */
    var ZMW = "ZMW";

    /**
     * Zimbabwean dollar.
     */
    var ZWL = "ZWL";
}