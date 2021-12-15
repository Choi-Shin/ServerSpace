package ch11_el;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	private Map<String, Double> locationCelsiusMap =
			new HashMap<>();
	
	public Double getCelsius(String location) {
		return locationCelsiusMap.get(location);
	}
	public void setCelsius(String location, Double value) {
		this.locationCelsiusMap.put(location, value);
	}
	//섭씨->화씨 메소드
	public Double getFahrenheit(String location) {
		Double celcius = getCelsius(location);
		if(celcius == null) {
			return null;
		}
		return celcius.doubleValue()*1.8+32.0;
	}
	//getInfo()를 EL에서 사용시 : info
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
}
