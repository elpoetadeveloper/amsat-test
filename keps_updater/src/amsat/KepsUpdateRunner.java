package amsat;

import java.io.File;


public class KepsUpdateRunner {

    public static void main(String[] args)  {
    	  SpaceTrackReader.run();
          String basePath = System.getenv("AMSAT_KEPS_DIR") + File.separator;
        
          SatelliteUpdateProcessor satelliteTLEProcessor = new SatelliteUpdateProcessor(basePath);
		  satelliteTLEProcessor.processAndSaveAllData();
        
		  System.exit(0);
		        
    }
}
