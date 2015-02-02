package events {
	import com.adobe.nativeExtensions.Gyroscope;
	import com.adobe.nativeExtensions.GyroscopeEvent;

	public class Gyro {
		
		private var gyro:Gyroscope;
		public var gyroX:int;
		public var gyroY:int;
		public var gyroZ:int;
		
		public function Gyro() { 
			gyro = new Gyroscope;
			gyroX = 0;
			gyroY = 0;
			gyroZ = 0;
			
			gyro.addEventListener(GyroscopeEvent.UPDATE, updateGyro);
		}
		
		private function updateGyro(e:GyroscopeEvent):void {
			gyroX = e.x;
			gyroY = e.y;
			gyroZ = e.z;
		}
	}
}