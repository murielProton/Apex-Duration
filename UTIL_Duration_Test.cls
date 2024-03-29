/** *******************************************************************************
 * @Author : Muriel Proton
 * @Company : Modis
 * This class tests the folowing classe(s) : UTIL_Duration
 * This class is used in class : 
 * @Interface : 
 * @Setup method : from line 
 * @Setup class and inner class : 
 * 
 ******************************************************************************* */
@isTest
public with sharing class UTIL_Duration_Test {
  //THE CONSTANTS OF THIS CLASS are stored in class UTIL_Duration
  /**
  * This method cheks if calculateTimeInMS() returns the right number of Milliseconds.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInMS(){
    Test.startTest();
    DateTime dateTimeStart = Datetime.newInstance(2022, 2, 15);
    DateTime dateTimeEnd = dateTimeStart.addSeconds(1);
    UTIL_Duration utilDurationForTest = new UTIL_Duration(dateTimeStart, dateTimeEnd);
    Long realDurationToTest =  utilDurationForTest.calculateTimeInMS();
    Test.stopTest();
    System.assertEquals(UTIL_Duration.NUMBER_OF_MS_IN_ONE_SECOND, realDurationToTest, 'It is not the right number of milliseconds.');
  }
  /**
  * This method cheks if calculateTimeInSeconds() returns the right number of seconds.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInSeconds(){
    Test.startTest();
    Long realDurationToTest =  UTIL_Duration.calculateTimeInSeconds(1230);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of seconds.');
  }
  /**
  * This method cheks if calculateTimeInMinutes() returns the right number of minutes.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInMinutes(){
    Test.startTest();
    Long realDurationToTest =  UTIL_Duration.calculateTimeInMinutes(61230);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of minutes.');
  }
  /**
  * This method cheks if calculateTimeInHours() returns the right number of hours.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInHours(){
    Test.startTest();
    Long realDurationToTest =  UTIL_Duration.calculateTimeInHours(3691230);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of hours.');
  }
  /**
  * This method cheks if calculateTimeInDays() returns the right number of days.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInDays(){
    Test.startTest();
    Long realDurationToTest =  UTIL_Duration.calculateTimeInDays(87691230);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of days.');
  }
  /**
  * This method cheks if calculateTimeInWeeks() returns the right number of weeks.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInWeeks(){
    Test.startTest();
    Long realDurationToTest =  UTIL_Duration.calculateTimeInWeeks(687691230);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of weeks.');
  }
  /**
  * This method cheks if calculateTimeInMonths() returns the right number of months.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInMonths(){
    Long nubmberOfMSToTest = long.valueOf('2630691230');
    Test.startTest();
    Long realDurationToTest = UTIL_Duration.calculateTimeInMonths(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of months.');
  }
  /**
  * This method cheks if calculateTimeInMonths() returns the right number of years.
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testCalculateTimeInYears(){
    Long nubmberOfMSToTest = long.valueOf('32630691230');
    Test.startTest();
    Long realDurationToTest = UTIL_Duration.calculateTimeInYears(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals(1, realDurationToTest, 'It is not the right number of years.');
  }
/**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are inferior to a second will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSInferiorToOneSecond(){
    Long nubmberOfMSToTest = long.valueOf('900');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('under a second.', realStringToTest, 'The string is not right for an input set to less than 1 second.');
  }
  /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to a second will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneSecond(){
    Long nubmberOfMSToTest = long.valueOf('1200');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 second.');
  }
    /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to a minute will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneMinute(){
    Long nubmberOfMSToTest = long.valueOf('61200');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 minute(s), 1 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 minute.');
  }
  /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to an hour will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneHour(){
    Long nubmberOfMSToTest = long.valueOf('3661200');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 hour(s), 1 minute(s), 1 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 hour.');
  }
  /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to a day will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneDay(){
    Long nubmberOfMSToTest = long.valueOf('86661200');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 day(s), 4 minute(s), 21 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 day.');
  }
  /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are equal to a week will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToAWeek(){
    Long nubmberOfMSToTest = long.valueOf('615910000');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 week(s), 3 hour(s), 5 minute(s), 10 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 week.');
  }
  /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to a month will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  * ! DO NOT PASS TODO Find what to do ?
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneMonth(){
    Long nubmberOfMSToTest = long.valueOf('2830461200');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 month(s), 2 day(s), 7 hour(s), 44 minute(s), 21 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 month.');
  }
    /**
  * This methode tests generateAStringFromMS.
  * If the parametters injected are superior to a year will it return the right String ?
  * Called by :
  * @Parametters : None
  * @Returns : VOID
  * ! DO NOT PASS TODO Find what to do ?
  */
  @isTest
  public static void testGenerateAStringFromMSSuperiorToOneYear(){
    Long nubmberOfMSToTest = long.valueOf('32647111111');
    Test.startTest();
    String realStringToTest = UTIL_Duration.generateAStringFromMS(nubmberOfMSToTest);
    Test.stopTest();
    System.assertEquals('1 year(s), 1 week(s), 5 day(s), 20 hour(s), 38 minute(s), 31 second(s)', realStringToTest, 'The string is not right for an input set to more than 1 year.');
  }
}
