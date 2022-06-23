import 'package:intl/intl.dart';

class Util{
  static String appId="ed60fcfbd110ee65c7150605ea8aceea";


static String getFormattedDDate(DateTime dateTime){
  return DateFormat("EEE, MMM d, ''y").format(dateTime);
}
static String getOnlyDay(DateTime dateTime){

    return DateFormat("EEEE").format(dateTime);
  }
}
