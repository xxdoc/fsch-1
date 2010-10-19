package connection
{
    public class TraceMessage implements ITraceMessage
    {
        private var _time:Date;
        private var _sender:String;
        private var _message:*;
        private var _version:int;


        public function TraceMessage(time:Date =  null, sender:String = null, message:* = null, version:int = 0)
        {
            _time = time;
            _sender = sender;
            _message = message;
            _version = version;
        }

        public function get time():Date
        {
            return _time;
        }

        public function get sender():String
        {
            return _sender;
        }

        public function get message():*
        {
            return _message;
        }

        public function get version():int
        {
            return _version;
        }

        public function set time(value:Date):void
        {
            _time = value;
        }

        public function set sender(value:String):void
        {
            _sender = value;
        }

        public function set message(value:*):void
        {
            _message = value;
        }


        public function set version(value:int):void
        {
            _version = value;
        }
    }
}