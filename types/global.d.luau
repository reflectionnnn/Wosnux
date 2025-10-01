declare FileSystem: FileSystem
declare RawFileSystem: RawFileSystem
declare Microcontroller: Microcontroller
declare SandboxRunID: string
declare SandboxID: string
declare Network: Network
declare pilot: {
	setTimeout: (timeout: number?, thread: thread?) -> (),
	hasRing: (ring: number, thread: thread?) -> (boolean),
	setInterrupt: (period: number, callback: () -> ()) -> (() -> ()),
	getTimeout: (thread: thread?) -> (number),
	setRing: (ring: number, thread: thread?) -> (),
	claimThread: (thread: thread) -> (boolean),
	getCPUTime: () -> (number),
	getRing: (thread: thread?) -> (number),
	getThreadParent: (thread: thread?) -> (thread?),
	saveRing: (ring: number?) -> (() -> ()),
}
declare function GetPorts(id: number?): ({ Port })
declare function GetPort(id: number?): (Port?)
declare function TriggerPort(port: PortLike): ()
declare function JSONEncode(data: JSON): (string)
declare function JSONDecode(data: string): (JSON)
declare GetPartFromPort: ((port: PortLike?, class: "DelayWire") -> (DelayWire?)) & ((port: PortLike?, class: "Hatch") -> (Hatch?)) & ((port: PortLike?, class: "Screen") -> (Screen?)) & ((port: PortLike?, class: "Extractor") -> (Extractor?)) & ((port: PortLike?, class: "Apparel") -> (Apparel?)) & ((port: PortLike?, class: "CloningBay") -> (CloningBay?)) & ((port: PortLike?, class: "Food") -> (Food?)) & ((port: PortLike?, class: "Filter") -> (Filter?)) & ((port: PortLike?, class: "Antenna") -> (Antenna?)) & ((port: PortLike?, class: "Instrument") -> (Instrument?)) & ((port: PortLike?, class: "ARController") -> (ARController?)) & ((port: PortLike?, class: "Teleporter") -> (Teleporter?)) & ((port: PortLike?, class: "Laser") -> (Laser?)) & ((port: PortLike?, class: "DevHeatStorage") -> (DevHeatStorage?)) & ((port: PortLike?, class: "BurnerGenerator") -> (BurnerGenerator?)) & ((port: PortLike?, class: "DevGravityGenerator") -> (DevGravityGenerator?)) & ((port: PortLike?, class: "Servo") -> (Servo?)) & ((port: PortLike?, class: "DriveBox") -> (DriveBox?)) & ((port: PortLike?, class: "FluidProjector") -> (FluidProjector?)) & ((port: PortLike?, class: "TimeSensor") -> (TimeSensor?)) & ((port: PortLike?, class: "ElectricFence") -> (ElectricFence?)) & ((port: PortLike?, class: "Pump") -> (Pump?)) & ((port: PortLike?, class: "Assembler") -> (Assembler?)) & ((port: PortLike?, class: "Keyboard") -> (Keyboard?)) & ((port: PortLike?, class: "StasisField") -> (StasisField?)) & ((port: PortLike?, class: "LightBridge") -> (LightBridge?)) & ((port: PortLike?, class: "ProximityButton") -> (ProximityButton?)) & ((port: PortLike?, class: "WirelessButton") -> (WirelessButton?)) & ((port: PortLike?, class: "DarkConverter") -> (DarkConverter?)) & ((port: PortLike?, class: "Disk") -> (Disk?)) & ((port: PortLike?, class: "LightTube") -> (LightTube?)) & ((port: PortLike?, class: "LifeSensor") -> (LifeSensor?)) & ((port: PortLike?, class: "SteamTurbine") -> (SteamTurbine?)) & ((port: PortLike?, class: "PilotObject") -> (PilotObject?)) & ((port: PortLike?, class: "Component") -> (Component?)) & ((port: PortLike?, class: "Brick") -> (Brick?)) & ((port: PortLike?, class: "Warhead") -> (Warhead?)) & ((port: PortLike?, class: "Transformer") -> (Transformer?)) & ((port: PortLike?, class: "Fireworks") -> (Fireworks?)) & ((port: PortLike?, class: "FactionHub") -> (FactionHub?)) & ((port: PortLike?, class: "TriggerRelay") -> (TriggerRelay?)) & ((port: PortLike?, class: "PowerCell") -> (PowerCell?)) & ((port: PortLike?, class: "Transistor") -> (Transistor?)) & ((port: PortLike?, class: "Piston") -> (Piston?)) & ((port: PortLike?, class: "Treads") -> (Treads?)) & ((port: PortLike?, class: "CrudeWing") -> (CrudeWing?)) & ((port: PortLike?, class: "SteamEngine") -> (SteamEngine?)) & ((port: PortLike?, class: "Microcontroller") -> (Microcontroller?)) & ((port: PortLike?, class: "HeatPump") -> (HeatPump?)) & ((port: PortLike?, class: "Speaker") -> (Speaker?)) & ((port: PortLike?, class: "Hull") -> (Hull?)) & ((port: PortLike?, class: "VehicleSeat") -> (VehicleSeat?)) & ((port: PortLike?, class: "Winch") -> (Winch?)) & ((port: PortLike?, class: "Rotor") -> (Rotor?)) & ((port: PortLike?, class: "Controller") -> (Controller?)) & ((port: PortLike?, class: "Obelisk") -> (Obelisk?)) & ((port: PortLike?, class: "Motor") -> (Motor?)) & ((port: PortLike?, class: "Telescope") -> (Telescope?)) & ((port: PortLike?, class: "BlackBox") -> (BlackBox?)) & ((port: PortLike?, class: "Reactor") -> (Reactor?)) & ((port: PortLike?, class: "Prosthetic") -> (Prosthetic?)) & ((port: PortLike?, class: "Decoupler") -> (Decoupler?)) & ((port: PortLike?, class: "Solenoid") -> (Solenoid?)) & ((port: PortLike?, class: "DevSink") -> (DevSink?)) & ((port: PortLike?, class: "HyperDrive") -> (HyperDrive?)) & ((port: PortLike?, class: "TriggerSwitch") -> (TriggerSwitch?)) & ((port: PortLike?, class: "SolarPanel") -> (SolarPanel?)) & ((port: PortLike?, class: "Boombox") -> (Boombox?)) & ((port: PortLike?, class: "Igniter") -> (Igniter?)) & ((port: PortLike?, class: "DeleteSwitch") -> (DeleteSwitch?)) & ((port: PortLike?, class: "Electromagnet") -> (Electromagnet?)) & ((port: PortLike?, class: "Rocket") -> (Rocket?)) & ((port: PortLike?, class: "Scrapper") -> (Scrapper?)) & ((port: PortLike?, class: "TemperatureGate") -> (TemperatureGate?)) & ((port: PortLike?, class: "RemoteControl") -> (RemoteControl?)) & ((port: PortLike?, class: "Flamethrower") -> (Flamethrower?)) & ((port: PortLike?, class: "Light") -> (Light?)) & ((port: PortLike?, class: "Balloon") -> (Balloon?)) & ((port: PortLike?, class: "DarkReactor") -> (DarkReactor?)) & ((port: PortLike?, class: "Sail") -> (Sail?)) & ((port: PortLike?, class: "Rail") -> (Rail?)) & ((port: PortLike?, class: "RepairLaser") -> (RepairLaser?)) & ((port: PortLike?, class: "Polysilicon") -> (Polysilicon?)) & ((port: PortLike?, class: "Scanner") -> (Scanner?)) & ((port: PortLike?, class: "Furnace") -> (Furnace?)) & ((port: PortLike?, class: "DevSource") -> (DevSource?)) & ((port: PortLike?, class: "AutomaticLaser") -> (AutomaticLaser?)) & ((port: PortLike?, class: "Faucet") -> (Faucet?)) & ((port: PortLike?, class: "Thruster") -> (Thruster?)) & ((port: PortLike?, class: "CombustionTurbine") -> (CombustionTurbine?)) & ((port: PortLike?, class: "TouchScreen") -> (TouchScreen?)) & ((port: PortLike?, class: "HeatCell") -> (HeatCell?)) & ((port: PortLike?, class: "Camera") -> (Camera?)) & ((port: PortLike?, class: "Modem") -> (Modem?)) & ((port: PortLike?, class: "TemperatureSensor") -> (TemperatureSensor?)) & ((port: PortLike?, class: "Engine") -> (Engine?)) & ((port: PortLike?, class: "Radar") -> (Radar?)) & ((port: PortLike?, class: "RepairPlate") -> (RepairPlate?)) & ((port: PortLike?, class: "MiningLaser") -> (MiningLaser?)) & ((port: PortLike?, class: "IonRocket") -> (IonRocket?)) & ((port: PortLike?, class: "BallastTank") -> (BallastTank?)) & ((port: PortLike?, class: "Router") -> (Router?)) & ((port: PortLike?, class: "Explosive") -> (Explosive?)) & ((port: PortLike?, class: "ObjectDetector") -> (ObjectDetector?)) & ((port: PortLike?, class: "StarMap") -> (StarMap?)) & ((port: PortLike?, class: "TractorBeam") -> (TractorBeam?)) & ((port: PortLike?, class: "Turbofan") -> (Turbofan?)) & ((port: PortLike?, class: "Battery") -> (Battery?)) & ((port: PortLike?, class: "Coupler") -> (Coupler?)) & ((port: PortLike?, class: "DevTeleporter") -> (DevTeleporter?)) & ((port: PortLike?, class: "Seat") -> (Seat?)) & ((port: PortLike?, class: "Part100k") -> (Part100k?)) & ((port: PortLike?, class: "Valve") -> (Valve?)) & ((port: PortLike?, class: "Freezer") -> (Freezer?)) & ((port: PortLike?, class: "Melter") -> (Melter?)) & ((port: PortLike?, class: "Railgun") -> (Railgun?)) & ((port: PortLike?, class: "Dispenser") -> (Dispenser?)) & ((port: PortLike?, class: "Wing") -> (Wing?)) & ((port: PortLike?, class: "Anchor") -> (Anchor?)) & ((port: PortLike?, class: "HeatValve") -> (HeatValve?)) & ((port: PortLike?, class: "Constructor") -> (Constructor?)) & ((port: PortLike?, class: "tinnitus") -> (tinnitus?)) & ((port: PortLike?, class: "EnergyBomb") -> (EnergyBomb?)) & ((port: PortLike?, class: "EnergyShield") -> (EnergyShield?)) & ((port: PortLike?, class: "TouchSensor") -> (TouchSensor?)) & ((port: PortLike?, class: "StorageSensor") -> (StorageSensor?)) & ((port: PortLike?, class: "Microphone") -> (Microphone?)) & ((port: PortLike?, class: "Blade") -> (Blade?)) & ((port: PortLike?, class: "Sorter") -> (Sorter?)) & ((port: PortLike?, class: "Hydroponic") -> (Hydroponic?)) & ((port: PortLike?, class: "GravityGenerator") -> (GravityGenerator?)) & ((port: PortLike?, class: "Gyro") -> (Gyro?)) & ((port: PortLike?, class: "WindTurbine") -> (WindTurbine?)) & ((port: PortLike?, class: "Sign") -> (Sign?)) & ((port: PortLike?, class: "ConveyorBelt") -> (ConveyorBelt?)) & ((port: PortLike?, class: "Plastic") -> (Plastic?)) & ((port: PortLike?, class: "Hologram") -> (Hologram?)) & ((port: PortLike?, class: "FourthOfJuly") -> (FourthOfJuly?)) & ((port: PortLike?, class: "Relay") -> (Relay?)) & ((port: PortLike?, class: "Transporter") -> (Transporter?)) & ((port: PortLike?, class: "DevBattery") -> (DevBattery?)) & ((port: PortLike?, class: "Door") -> (Door?)) & ((port: PortLike?, class: "Handle") -> (Handle?)) & ((port: PortLike?, class: "SolarScoop") -> (SolarScoop?)) & ((port: PortLike?, class: "Refinery") -> (Refinery?)) & ((port: PortLike?, class: "Bin") -> (Bin?)) & ((port: PortLike?, class: "Propeller") -> (Propeller?)) & ((port: PortLike?, class: "Kiln") -> (Kiln?)) & ((port: PortLike?, class: "Boiler") -> (Boiler?)) & ((port: PortLike?, class: "Asphalt") -> (Asphalt?)) & ((port: PortLike?, class: "HyperspaceRadar") -> (HyperspaceRadar?)) & ((port: PortLike?, class: "Tank") -> (Tank?)) & ((port: PortLike?, class: "Switch") -> (Switch?)) & ((port: PortLike?, class: "Port") -> (Port?)) & ((port: PortLike?, class: "Beacon") -> (Beacon?)) & ((port: PortLike?, class: "Spotlight") -> (Spotlight?)) & ((port: PortLike?, class: string) -> (PilotObject))
declare GetParts: ((class: "DelayWire") -> ({ DelayWire })) & ((class: "Hatch") -> ({ Hatch })) & ((class: "Screen") -> ({ Screen })) & ((class: "Extractor") -> ({ Extractor })) & ((class: "Apparel") -> ({ Apparel })) & ((class: "CloningBay") -> ({ CloningBay })) & ((class: "Food") -> ({ Food })) & ((class: "Filter") -> ({ Filter })) & ((class: "Antenna") -> ({ Antenna })) & ((class: "Instrument") -> ({ Instrument })) & ((class: "ARController") -> ({ ARController })) & ((class: "Teleporter") -> ({ Teleporter })) & ((class: "Laser") -> ({ Laser })) & ((class: "DevHeatStorage") -> ({ DevHeatStorage })) & ((class: "BurnerGenerator") -> ({ BurnerGenerator })) & ((class: "DevGravityGenerator") -> ({ DevGravityGenerator })) & ((class: "Servo") -> ({ Servo })) & ((class: "DriveBox") -> ({ DriveBox })) & ((class: "FluidProjector") -> ({ FluidProjector })) & ((class: "TimeSensor") -> ({ TimeSensor })) & ((class: "ElectricFence") -> ({ ElectricFence })) & ((class: "Pump") -> ({ Pump })) & ((class: "Assembler") -> ({ Assembler })) & ((class: "Keyboard") -> ({ Keyboard })) & ((class: "StasisField") -> ({ StasisField })) & ((class: "LightBridge") -> ({ LightBridge })) & ((class: "ProximityButton") -> ({ ProximityButton })) & ((class: "WirelessButton") -> ({ WirelessButton })) & ((class: "DarkConverter") -> ({ DarkConverter })) & ((class: "Disk") -> ({ Disk })) & ((class: "LightTube") -> ({ LightTube })) & ((class: "LifeSensor") -> ({ LifeSensor })) & ((class: "SteamTurbine") -> ({ SteamTurbine })) & ((class: "PilotObject") -> ({ PilotObject })) & ((class: "Component") -> ({ Component })) & ((class: "Brick") -> ({ Brick })) & ((class: "Warhead") -> ({ Warhead })) & ((class: "Transformer") -> ({ Transformer })) & ((class: "Fireworks") -> ({ Fireworks })) & ((class: "FactionHub") -> ({ FactionHub })) & ((class: "TriggerRelay") -> ({ TriggerRelay })) & ((class: "PowerCell") -> ({ PowerCell })) & ((class: "Transistor") -> ({ Transistor })) & ((class: "Piston") -> ({ Piston })) & ((class: "Treads") -> ({ Treads })) & ((class: "CrudeWing") -> ({ CrudeWing })) & ((class: "SteamEngine") -> ({ SteamEngine })) & ((class: "Microcontroller") -> ({ Microcontroller })) & ((class: "HeatPump") -> ({ HeatPump })) & ((class: "Speaker") -> ({ Speaker })) & ((class: "Hull") -> ({ Hull })) & ((class: "VehicleSeat") -> ({ VehicleSeat })) & ((class: "Winch") -> ({ Winch })) & ((class: "Rotor") -> ({ Rotor })) & ((class: "Controller") -> ({ Controller })) & ((class: "Obelisk") -> ({ Obelisk })) & ((class: "Motor") -> ({ Motor })) & ((class: "Telescope") -> ({ Telescope })) & ((class: "BlackBox") -> ({ BlackBox })) & ((class: "Reactor") -> ({ Reactor })) & ((class: "Prosthetic") -> ({ Prosthetic })) & ((class: "Decoupler") -> ({ Decoupler })) & ((class: "Solenoid") -> ({ Solenoid })) & ((class: "DevSink") -> ({ DevSink })) & ((class: "HyperDrive") -> ({ HyperDrive })) & ((class: "TriggerSwitch") -> ({ TriggerSwitch })) & ((class: "SolarPanel") -> ({ SolarPanel })) & ((class: "Boombox") -> ({ Boombox })) & ((class: "Igniter") -> ({ Igniter })) & ((class: "DeleteSwitch") -> ({ DeleteSwitch })) & ((class: "Electromagnet") -> ({ Electromagnet })) & ((class: "Rocket") -> ({ Rocket })) & ((class: "Scrapper") -> ({ Scrapper })) & ((class: "TemperatureGate") -> ({ TemperatureGate })) & ((class: "RemoteControl") -> ({ RemoteControl })) & ((class: "Flamethrower") -> ({ Flamethrower })) & ((class: "Light") -> ({ Light })) & ((class: "Balloon") -> ({ Balloon })) & ((class: "DarkReactor") -> ({ DarkReactor })) & ((class: "Sail") -> ({ Sail })) & ((class: "Rail") -> ({ Rail })) & ((class: "RepairLaser") -> ({ RepairLaser })) & ((class: "Polysilicon") -> ({ Polysilicon })) & ((class: "Scanner") -> ({ Scanner })) & ((class: "Furnace") -> ({ Furnace })) & ((class: "DevSource") -> ({ DevSource })) & ((class: "AutomaticLaser") -> ({ AutomaticLaser })) & ((class: "Faucet") -> ({ Faucet })) & ((class: "Thruster") -> ({ Thruster })) & ((class: "CombustionTurbine") -> ({ CombustionTurbine })) & ((class: "TouchScreen") -> ({ TouchScreen })) & ((class: "HeatCell") -> ({ HeatCell })) & ((class: "Camera") -> ({ Camera })) & ((class: "Modem") -> ({ Modem })) & ((class: "TemperatureSensor") -> ({ TemperatureSensor })) & ((class: "Engine") -> ({ Engine })) & ((class: "Radar") -> ({ Radar })) & ((class: "RepairPlate") -> ({ RepairPlate })) & ((class: "MiningLaser") -> ({ MiningLaser })) & ((class: "IonRocket") -> ({ IonRocket })) & ((class: "BallastTank") -> ({ BallastTank })) & ((class: "Router") -> ({ Router })) & ((class: "Explosive") -> ({ Explosive })) & ((class: "ObjectDetector") -> ({ ObjectDetector })) & ((class: "StarMap") -> ({ StarMap })) & ((class: "TractorBeam") -> ({ TractorBeam })) & ((class: "Turbofan") -> ({ Turbofan })) & ((class: "Battery") -> ({ Battery })) & ((class: "Coupler") -> ({ Coupler })) & ((class: "DevTeleporter") -> ({ DevTeleporter })) & ((class: "Seat") -> ({ Seat })) & ((class: "Part100k") -> ({ Part100k })) & ((class: "Valve") -> ({ Valve })) & ((class: "Freezer") -> ({ Freezer })) & ((class: "Melter") -> ({ Melter })) & ((class: "Railgun") -> ({ Railgun })) & ((class: "Dispenser") -> ({ Dispenser })) & ((class: "Wing") -> ({ Wing })) & ((class: "Anchor") -> ({ Anchor })) & ((class: "HeatValve") -> ({ HeatValve })) & ((class: "Constructor") -> ({ Constructor })) & ((class: "tinnitus") -> ({ tinnitus })) & ((class: "EnergyBomb") -> ({ EnergyBomb })) & ((class: "EnergyShield") -> ({ EnergyShield })) & ((class: "TouchSensor") -> ({ TouchSensor })) & ((class: "StorageSensor") -> ({ StorageSensor })) & ((class: "Microphone") -> ({ Microphone })) & ((class: "Blade") -> ({ Blade })) & ((class: "Sorter") -> ({ Sorter })) & ((class: "Hydroponic") -> ({ Hydroponic })) & ((class: "GravityGenerator") -> ({ GravityGenerator })) & ((class: "Gyro") -> ({ Gyro })) & ((class: "WindTurbine") -> ({ WindTurbine })) & ((class: "Sign") -> ({ Sign })) & ((class: "ConveyorBelt") -> ({ ConveyorBelt })) & ((class: "Plastic") -> ({ Plastic })) & ((class: "Hologram") -> ({ Hologram })) & ((class: "FourthOfJuly") -> ({ FourthOfJuly })) & ((class: "Relay") -> ({ Relay })) & ((class: "Transporter") -> ({ Transporter })) & ((class: "DevBattery") -> ({ DevBattery })) & ((class: "Door") -> ({ Door })) & ((class: "Handle") -> ({ Handle })) & ((class: "SolarScoop") -> ({ SolarScoop })) & ((class: "Refinery") -> ({ Refinery })) & ((class: "Bin") -> ({ Bin })) & ((class: "Propeller") -> ({ Propeller })) & ((class: "Kiln") -> ({ Kiln })) & ((class: "Boiler") -> ({ Boiler })) & ((class: "Asphalt") -> ({ Asphalt })) & ((class: "HyperspaceRadar") -> ({ HyperspaceRadar })) & ((class: "Tank") -> ({ Tank })) & ((class: "Switch") -> ({ Switch })) & ((class: "Port") -> ({ Port })) & ((class: "Beacon") -> ({ Beacon })) & ((class: "Spotlight") -> ({ Spotlight })) & ((class: string) -> ({ PilotObject }))
declare GetPartsFromPort: ((port: PortLike?, class: "DelayWire") -> ({ DelayWire })) & ((port: PortLike?, class: "Hatch") -> ({ Hatch })) & ((port: PortLike?, class: "Screen") -> ({ Screen })) & ((port: PortLike?, class: "Extractor") -> ({ Extractor })) & ((port: PortLike?, class: "Apparel") -> ({ Apparel })) & ((port: PortLike?, class: "CloningBay") -> ({ CloningBay })) & ((port: PortLike?, class: "Food") -> ({ Food })) & ((port: PortLike?, class: "Filter") -> ({ Filter })) & ((port: PortLike?, class: "Antenna") -> ({ Antenna })) & ((port: PortLike?, class: "Instrument") -> ({ Instrument })) & ((port: PortLike?, class: "ARController") -> ({ ARController })) & ((port: PortLike?, class: "Teleporter") -> ({ Teleporter })) & ((port: PortLike?, class: "Laser") -> ({ Laser })) & ((port: PortLike?, class: "DevHeatStorage") -> ({ DevHeatStorage })) & ((port: PortLike?, class: "BurnerGenerator") -> ({ BurnerGenerator })) & ((port: PortLike?, class: "DevGravityGenerator") -> ({ DevGravityGenerator })) & ((port: PortLike?, class: "Servo") -> ({ Servo })) & ((port: PortLike?, class: "DriveBox") -> ({ DriveBox })) & ((port: PortLike?, class: "FluidProjector") -> ({ FluidProjector })) & ((port: PortLike?, class: "TimeSensor") -> ({ TimeSensor })) & ((port: PortLike?, class: "ElectricFence") -> ({ ElectricFence })) & ((port: PortLike?, class: "Pump") -> ({ Pump })) & ((port: PortLike?, class: "Assembler") -> ({ Assembler })) & ((port: PortLike?, class: "Keyboard") -> ({ Keyboard })) & ((port: PortLike?, class: "StasisField") -> ({ StasisField })) & ((port: PortLike?, class: "LightBridge") -> ({ LightBridge })) & ((port: PortLike?, class: "ProximityButton") -> ({ ProximityButton })) & ((port: PortLike?, class: "WirelessButton") -> ({ WirelessButton })) & ((port: PortLike?, class: "DarkConverter") -> ({ DarkConverter })) & ((port: PortLike?, class: "Disk") -> ({ Disk })) & ((port: PortLike?, class: "LightTube") -> ({ LightTube })) & ((port: PortLike?, class: "LifeSensor") -> ({ LifeSensor })) & ((port: PortLike?, class: "SteamTurbine") -> ({ SteamTurbine })) & ((port: PortLike?, class: "PilotObject") -> ({ PilotObject })) & ((port: PortLike?, class: "Component") -> ({ Component })) & ((port: PortLike?, class: "Brick") -> ({ Brick })) & ((port: PortLike?, class: "Warhead") -> ({ Warhead })) & ((port: PortLike?, class: "Transformer") -> ({ Transformer })) & ((port: PortLike?, class: "Fireworks") -> ({ Fireworks })) & ((port: PortLike?, class: "FactionHub") -> ({ FactionHub })) & ((port: PortLike?, class: "TriggerRelay") -> ({ TriggerRelay })) & ((port: PortLike?, class: "PowerCell") -> ({ PowerCell })) & ((port: PortLike?, class: "Transistor") -> ({ Transistor })) & ((port: PortLike?, class: "Piston") -> ({ Piston })) & ((port: PortLike?, class: "Treads") -> ({ Treads })) & ((port: PortLike?, class: "CrudeWing") -> ({ CrudeWing })) & ((port: PortLike?, class: "SteamEngine") -> ({ SteamEngine })) & ((port: PortLike?, class: "Microcontroller") -> ({ Microcontroller })) & ((port: PortLike?, class: "HeatPump") -> ({ HeatPump })) & ((port: PortLike?, class: "Speaker") -> ({ Speaker })) & ((port: PortLike?, class: "Hull") -> ({ Hull })) & ((port: PortLike?, class: "VehicleSeat") -> ({ VehicleSeat })) & ((port: PortLike?, class: "Winch") -> ({ Winch })) & ((port: PortLike?, class: "Rotor") -> ({ Rotor })) & ((port: PortLike?, class: "Controller") -> ({ Controller })) & ((port: PortLike?, class: "Obelisk") -> ({ Obelisk })) & ((port: PortLike?, class: "Motor") -> ({ Motor })) & ((port: PortLike?, class: "Telescope") -> ({ Telescope })) & ((port: PortLike?, class: "BlackBox") -> ({ BlackBox })) & ((port: PortLike?, class: "Reactor") -> ({ Reactor })) & ((port: PortLike?, class: "Prosthetic") -> ({ Prosthetic })) & ((port: PortLike?, class: "Decoupler") -> ({ Decoupler })) & ((port: PortLike?, class: "Solenoid") -> ({ Solenoid })) & ((port: PortLike?, class: "DevSink") -> ({ DevSink })) & ((port: PortLike?, class: "HyperDrive") -> ({ HyperDrive })) & ((port: PortLike?, class: "TriggerSwitch") -> ({ TriggerSwitch })) & ((port: PortLike?, class: "SolarPanel") -> ({ SolarPanel })) & ((port: PortLike?, class: "Boombox") -> ({ Boombox })) & ((port: PortLike?, class: "Igniter") -> ({ Igniter })) & ((port: PortLike?, class: "DeleteSwitch") -> ({ DeleteSwitch })) & ((port: PortLike?, class: "Electromagnet") -> ({ Electromagnet })) & ((port: PortLike?, class: "Rocket") -> ({ Rocket })) & ((port: PortLike?, class: "Scrapper") -> ({ Scrapper })) & ((port: PortLike?, class: "TemperatureGate") -> ({ TemperatureGate })) & ((port: PortLike?, class: "RemoteControl") -> ({ RemoteControl })) & ((port: PortLike?, class: "Flamethrower") -> ({ Flamethrower })) & ((port: PortLike?, class: "Light") -> ({ Light })) & ((port: PortLike?, class: "Balloon") -> ({ Balloon })) & ((port: PortLike?, class: "DarkReactor") -> ({ DarkReactor })) & ((port: PortLike?, class: "Sail") -> ({ Sail })) & ((port: PortLike?, class: "Rail") -> ({ Rail })) & ((port: PortLike?, class: "RepairLaser") -> ({ RepairLaser })) & ((port: PortLike?, class: "Polysilicon") -> ({ Polysilicon })) & ((port: PortLike?, class: "Scanner") -> ({ Scanner })) & ((port: PortLike?, class: "Furnace") -> ({ Furnace })) & ((port: PortLike?, class: "DevSource") -> ({ DevSource })) & ((port: PortLike?, class: "AutomaticLaser") -> ({ AutomaticLaser })) & ((port: PortLike?, class: "Faucet") -> ({ Faucet })) & ((port: PortLike?, class: "Thruster") -> ({ Thruster })) & ((port: PortLike?, class: "CombustionTurbine") -> ({ CombustionTurbine })) & ((port: PortLike?, class: "TouchScreen") -> ({ TouchScreen })) & ((port: PortLike?, class: "HeatCell") -> ({ HeatCell })) & ((port: PortLike?, class: "Camera") -> ({ Camera })) & ((port: PortLike?, class: "Modem") -> ({ Modem })) & ((port: PortLike?, class: "TemperatureSensor") -> ({ TemperatureSensor })) & ((port: PortLike?, class: "Engine") -> ({ Engine })) & ((port: PortLike?, class: "Radar") -> ({ Radar })) & ((port: PortLike?, class: "RepairPlate") -> ({ RepairPlate })) & ((port: PortLike?, class: "MiningLaser") -> ({ MiningLaser })) & ((port: PortLike?, class: "IonRocket") -> ({ IonRocket })) & ((port: PortLike?, class: "BallastTank") -> ({ BallastTank })) & ((port: PortLike?, class: "Router") -> ({ Router })) & ((port: PortLike?, class: "Explosive") -> ({ Explosive })) & ((port: PortLike?, class: "ObjectDetector") -> ({ ObjectDetector })) & ((port: PortLike?, class: "StarMap") -> ({ StarMap })) & ((port: PortLike?, class: "TractorBeam") -> ({ TractorBeam })) & ((port: PortLike?, class: "Turbofan") -> ({ Turbofan })) & ((port: PortLike?, class: "Battery") -> ({ Battery })) & ((port: PortLike?, class: "Coupler") -> ({ Coupler })) & ((port: PortLike?, class: "DevTeleporter") -> ({ DevTeleporter })) & ((port: PortLike?, class: "Seat") -> ({ Seat })) & ((port: PortLike?, class: "Part100k") -> ({ Part100k })) & ((port: PortLike?, class: "Valve") -> ({ Valve })) & ((port: PortLike?, class: "Freezer") -> ({ Freezer })) & ((port: PortLike?, class: "Melter") -> ({ Melter })) & ((port: PortLike?, class: "Railgun") -> ({ Railgun })) & ((port: PortLike?, class: "Dispenser") -> ({ Dispenser })) & ((port: PortLike?, class: "Wing") -> ({ Wing })) & ((port: PortLike?, class: "Anchor") -> ({ Anchor })) & ((port: PortLike?, class: "HeatValve") -> ({ HeatValve })) & ((port: PortLike?, class: "Constructor") -> ({ Constructor })) & ((port: PortLike?, class: "tinnitus") -> ({ tinnitus })) & ((port: PortLike?, class: "EnergyBomb") -> ({ EnergyBomb })) & ((port: PortLike?, class: "EnergyShield") -> ({ EnergyShield })) & ((port: PortLike?, class: "TouchSensor") -> ({ TouchSensor })) & ((port: PortLike?, class: "StorageSensor") -> ({ StorageSensor })) & ((port: PortLike?, class: "Microphone") -> ({ Microphone })) & ((port: PortLike?, class: "Blade") -> ({ Blade })) & ((port: PortLike?, class: "Sorter") -> ({ Sorter })) & ((port: PortLike?, class: "Hydroponic") -> ({ Hydroponic })) & ((port: PortLike?, class: "GravityGenerator") -> ({ GravityGenerator })) & ((port: PortLike?, class: "Gyro") -> ({ Gyro })) & ((port: PortLike?, class: "WindTurbine") -> ({ WindTurbine })) & ((port: PortLike?, class: "Sign") -> ({ Sign })) & ((port: PortLike?, class: "ConveyorBelt") -> ({ ConveyorBelt })) & ((port: PortLike?, class: "Plastic") -> ({ Plastic })) & ((port: PortLike?, class: "Hologram") -> ({ Hologram })) & ((port: PortLike?, class: "FourthOfJuly") -> ({ FourthOfJuly })) & ((port: PortLike?, class: "Relay") -> ({ Relay })) & ((port: PortLike?, class: "Transporter") -> ({ Transporter })) & ((port: PortLike?, class: "DevBattery") -> ({ DevBattery })) & ((port: PortLike?, class: "Door") -> ({ Door })) & ((port: PortLike?, class: "Handle") -> ({ Handle })) & ((port: PortLike?, class: "SolarScoop") -> ({ SolarScoop })) & ((port: PortLike?, class: "Refinery") -> ({ Refinery })) & ((port: PortLike?, class: "Bin") -> ({ Bin })) & ((port: PortLike?, class: "Propeller") -> ({ Propeller })) & ((port: PortLike?, class: "Kiln") -> ({ Kiln })) & ((port: PortLike?, class: "Boiler") -> ({ Boiler })) & ((port: PortLike?, class: "Asphalt") -> ({ Asphalt })) & ((port: PortLike?, class: "HyperspaceRadar") -> ({ HyperspaceRadar })) & ((port: PortLike?, class: "Tank") -> ({ Tank })) & ((port: PortLike?, class: "Switch") -> ({ Switch })) & ((port: PortLike?, class: "Port") -> ({ Port })) & ((port: PortLike?, class: "Beacon") -> ({ Beacon })) & ((port: PortLike?, class: "Spotlight") -> ({ Spotlight })) & ((port: PortLike?, class: string) -> ({ PilotObject }))
declare GetPart: ((class: "DelayWire") -> (DelayWire?)) & ((class: "Hatch") -> (Hatch?)) & ((class: "Screen") -> (Screen?)) & ((class: "Extractor") -> (Extractor?)) & ((class: "Apparel") -> (Apparel?)) & ((class: "CloningBay") -> (CloningBay?)) & ((class: "Food") -> (Food?)) & ((class: "Filter") -> (Filter?)) & ((class: "Antenna") -> (Antenna?)) & ((class: "Instrument") -> (Instrument?)) & ((class: "ARController") -> (ARController?)) & ((class: "Teleporter") -> (Teleporter?)) & ((class: "Laser") -> (Laser?)) & ((class: "DevHeatStorage") -> (DevHeatStorage?)) & ((class: "BurnerGenerator") -> (BurnerGenerator?)) & ((class: "DevGravityGenerator") -> (DevGravityGenerator?)) & ((class: "Servo") -> (Servo?)) & ((class: "DriveBox") -> (DriveBox?)) & ((class: "FluidProjector") -> (FluidProjector?)) & ((class: "TimeSensor") -> (TimeSensor?)) & ((class: "ElectricFence") -> (ElectricFence?)) & ((class: "Pump") -> (Pump?)) & ((class: "Assembler") -> (Assembler?)) & ((class: "Keyboard") -> (Keyboard?)) & ((class: "StasisField") -> (StasisField?)) & ((class: "LightBridge") -> (LightBridge?)) & ((class: "ProximityButton") -> (ProximityButton?)) & ((class: "WirelessButton") -> (WirelessButton?)) & ((class: "DarkConverter") -> (DarkConverter?)) & ((class: "Disk") -> (Disk?)) & ((class: "LightTube") -> (LightTube?)) & ((class: "LifeSensor") -> (LifeSensor?)) & ((class: "SteamTurbine") -> (SteamTurbine?)) & ((class: "PilotObject") -> (PilotObject?)) & ((class: "Component") -> (Component?)) & ((class: "Brick") -> (Brick?)) & ((class: "Warhead") -> (Warhead?)) & ((class: "Transformer") -> (Transformer?)) & ((class: "Fireworks") -> (Fireworks?)) & ((class: "FactionHub") -> (FactionHub?)) & ((class: "TriggerRelay") -> (TriggerRelay?)) & ((class: "PowerCell") -> (PowerCell?)) & ((class: "Transistor") -> (Transistor?)) & ((class: "Piston") -> (Piston?)) & ((class: "Treads") -> (Treads?)) & ((class: "CrudeWing") -> (CrudeWing?)) & ((class: "SteamEngine") -> (SteamEngine?)) & ((class: "Microcontroller") -> (Microcontroller?)) & ((class: "HeatPump") -> (HeatPump?)) & ((class: "Speaker") -> (Speaker?)) & ((class: "Hull") -> (Hull?)) & ((class: "VehicleSeat") -> (VehicleSeat?)) & ((class: "Winch") -> (Winch?)) & ((class: "Rotor") -> (Rotor?)) & ((class: "Controller") -> (Controller?)) & ((class: "Obelisk") -> (Obelisk?)) & ((class: "Motor") -> (Motor?)) & ((class: "Telescope") -> (Telescope?)) & ((class: "BlackBox") -> (BlackBox?)) & ((class: "Reactor") -> (Reactor?)) & ((class: "Prosthetic") -> (Prosthetic?)) & ((class: "Decoupler") -> (Decoupler?)) & ((class: "Solenoid") -> (Solenoid?)) & ((class: "DevSink") -> (DevSink?)) & ((class: "HyperDrive") -> (HyperDrive?)) & ((class: "TriggerSwitch") -> (TriggerSwitch?)) & ((class: "SolarPanel") -> (SolarPanel?)) & ((class: "Boombox") -> (Boombox?)) & ((class: "Igniter") -> (Igniter?)) & ((class: "DeleteSwitch") -> (DeleteSwitch?)) & ((class: "Electromagnet") -> (Electromagnet?)) & ((class: "Rocket") -> (Rocket?)) & ((class: "Scrapper") -> (Scrapper?)) & ((class: "TemperatureGate") -> (TemperatureGate?)) & ((class: "RemoteControl") -> (RemoteControl?)) & ((class: "Flamethrower") -> (Flamethrower?)) & ((class: "Light") -> (Light?)) & ((class: "Balloon") -> (Balloon?)) & ((class: "DarkReactor") -> (DarkReactor?)) & ((class: "Sail") -> (Sail?)) & ((class: "Rail") -> (Rail?)) & ((class: "RepairLaser") -> (RepairLaser?)) & ((class: "Polysilicon") -> (Polysilicon?)) & ((class: "Scanner") -> (Scanner?)) & ((class: "Furnace") -> (Furnace?)) & ((class: "DevSource") -> (DevSource?)) & ((class: "AutomaticLaser") -> (AutomaticLaser?)) & ((class: "Faucet") -> (Faucet?)) & ((class: "Thruster") -> (Thruster?)) & ((class: "CombustionTurbine") -> (CombustionTurbine?)) & ((class: "TouchScreen") -> (TouchScreen?)) & ((class: "HeatCell") -> (HeatCell?)) & ((class: "Camera") -> (Camera?)) & ((class: "Modem") -> (Modem?)) & ((class: "TemperatureSensor") -> (TemperatureSensor?)) & ((class: "Engine") -> (Engine?)) & ((class: "Radar") -> (Radar?)) & ((class: "RepairPlate") -> (RepairPlate?)) & ((class: "MiningLaser") -> (MiningLaser?)) & ((class: "IonRocket") -> (IonRocket?)) & ((class: "BallastTank") -> (BallastTank?)) & ((class: "Router") -> (Router?)) & ((class: "Explosive") -> (Explosive?)) & ((class: "ObjectDetector") -> (ObjectDetector?)) & ((class: "StarMap") -> (StarMap?)) & ((class: "TractorBeam") -> (TractorBeam?)) & ((class: "Turbofan") -> (Turbofan?)) & ((class: "Battery") -> (Battery?)) & ((class: "Coupler") -> (Coupler?)) & ((class: "DevTeleporter") -> (DevTeleporter?)) & ((class: "Seat") -> (Seat?)) & ((class: "Part100k") -> (Part100k?)) & ((class: "Valve") -> (Valve?)) & ((class: "Freezer") -> (Freezer?)) & ((class: "Melter") -> (Melter?)) & ((class: "Railgun") -> (Railgun?)) & ((class: "Dispenser") -> (Dispenser?)) & ((class: "Wing") -> (Wing?)) & ((class: "Anchor") -> (Anchor?)) & ((class: "HeatValve") -> (HeatValve?)) & ((class: "Constructor") -> (Constructor?)) & ((class: "tinnitus") -> (tinnitus?)) & ((class: "EnergyBomb") -> (EnergyBomb?)) & ((class: "EnergyShield") -> (EnergyShield?)) & ((class: "TouchSensor") -> (TouchSensor?)) & ((class: "StorageSensor") -> (StorageSensor?)) & ((class: "Microphone") -> (Microphone?)) & ((class: "Blade") -> (Blade?)) & ((class: "Sorter") -> (Sorter?)) & ((class: "Hydroponic") -> (Hydroponic?)) & ((class: "GravityGenerator") -> (GravityGenerator?)) & ((class: "Gyro") -> (Gyro?)) & ((class: "WindTurbine") -> (WindTurbine?)) & ((class: "Sign") -> (Sign?)) & ((class: "ConveyorBelt") -> (ConveyorBelt?)) & ((class: "Plastic") -> (Plastic?)) & ((class: "Hologram") -> (Hologram?)) & ((class: "FourthOfJuly") -> (FourthOfJuly?)) & ((class: "Relay") -> (Relay?)) & ((class: "Transporter") -> (Transporter?)) & ((class: "DevBattery") -> (DevBattery?)) & ((class: "Door") -> (Door?)) & ((class: "Handle") -> (Handle?)) & ((class: "SolarScoop") -> (SolarScoop?)) & ((class: "Refinery") -> (Refinery?)) & ((class: "Bin") -> (Bin?)) & ((class: "Propeller") -> (Propeller?)) & ((class: "Kiln") -> (Kiln?)) & ((class: "Boiler") -> (Boiler?)) & ((class: "Asphalt") -> (Asphalt?)) & ((class: "HyperspaceRadar") -> (HyperspaceRadar?)) & ((class: "Tank") -> (Tank?)) & ((class: "Switch") -> (Switch?)) & ((class: "Port") -> (Port?)) & ((class: "Beacon") -> (Beacon?)) & ((class: "Spotlight") -> (Spotlight?)) & ((class: string) -> (PilotObject))
declare function logError(message: string, level: number?): ()
declare function Beep(frequency: number?): ()
declare function GetCPUTime(): (number)
type JSONValue = string | number | boolean | buffer
type JSON = {
	[JSONValue]: JSON,
} | { JSON } | JSONValue
export type ComponentName = "Blade" | "KeyButton" | "ClickButton" | "Hull" | "Door"
export type Permission = "Modify" | "Unlock" | "Paint" | "Configure" | "Interact" | "Attach"
export type TemperatureUnit = "K" | "F" | "C"
export type CanvasContext = "2D" | "3D"
export type HandleTriggerMode = "MouseDown" | "MouseUp" | "Both"
export type VehicleSeatMode = "Horizontal" | "Yaw/Pitch" | "Full" | "Mouse"
export type PolysiliconMode = "Activate" | "Deactivate" | "FlipFlop"
export type RelayMode = "Send" | "Receive"
export type InstrumentType = "Speed" | "AngularSpeed" | "Temperature" | "Time" | "Power" | "Size" | "Position" | "TemperatureF" | "Orientation" | "TemperatureC" | "AirTemperatureF" | "AirTemperatureC"
export type PlayerLimb = "Head" | "Torso" | "Left Arm" | "Right Arm" | "Left Leg" | "Right Leg" | "HumanoidRootPart"
export type BladeShape = "Block" | "Spheroid" | "Cone"
export type HandleSwingMode = "None" | "Swing" | "Point"
export type RemoteControlMode = "EmitFromTarget" | "SendDirectly"
export type RegionLog = {
	TimeAgo: number,
	Event: RegionLogType,
	Desc: string,
}
export type RegionLogType = "HyperDrive is warping to" | "Aliens were spawned from an obelisk located at" | "Spawned" | "Death" | "ExitRegion" | "Poison" | "Irradiated" | "Suffocating" | "Freezing" | "Melting"
export type Network = {
	GetPort: (self: Network, port: PortLike?) -> ({ Port }),
	GetPartsFromPort: ((self: Network, port: PortLike?, class: "DelayWire") -> ({ DelayWire })) & ((self: Network, port: PortLike?, class: "Hatch") -> ({ Hatch })) & ((self: Network, port: PortLike?, class: "Screen") -> ({ Screen })) & ((self: Network, port: PortLike?, class: "Extractor") -> ({ Extractor })) & ((self: Network, port: PortLike?, class: "Apparel") -> ({ Apparel })) & ((self: Network, port: PortLike?, class: "CloningBay") -> ({ CloningBay })) & ((self: Network, port: PortLike?, class: "Food") -> ({ Food })) & ((self: Network, port: PortLike?, class: "Filter") -> ({ Filter })) & ((self: Network, port: PortLike?, class: "Antenna") -> ({ Antenna })) & ((self: Network, port: PortLike?, class: "Instrument") -> ({ Instrument })) & ((self: Network, port: PortLike?, class: "ARController") -> ({ ARController })) & ((self: Network, port: PortLike?, class: "Teleporter") -> ({ Teleporter })) & ((self: Network, port: PortLike?, class: "Laser") -> ({ Laser })) & ((self: Network, port: PortLike?, class: "DevHeatStorage") -> ({ DevHeatStorage })) & ((self: Network, port: PortLike?, class: "BurnerGenerator") -> ({ BurnerGenerator })) & ((self: Network, port: PortLike?, class: "DevGravityGenerator") -> ({ DevGravityGenerator })) & ((self: Network, port: PortLike?, class: "Servo") -> ({ Servo })) & ((self: Network, port: PortLike?, class: "DriveBox") -> ({ DriveBox })) & ((self: Network, port: PortLike?, class: "FluidProjector") -> ({ FluidProjector })) & ((self: Network, port: PortLike?, class: "TimeSensor") -> ({ TimeSensor })) & ((self: Network, port: PortLike?, class: "ElectricFence") -> ({ ElectricFence })) & ((self: Network, port: PortLike?, class: "Pump") -> ({ Pump })) & ((self: Network, port: PortLike?, class: "Assembler") -> ({ Assembler })) & ((self: Network, port: PortLike?, class: "Keyboard") -> ({ Keyboard })) & ((self: Network, port: PortLike?, class: "StasisField") -> ({ StasisField })) & ((self: Network, port: PortLike?, class: "LightBridge") -> ({ LightBridge })) & ((self: Network, port: PortLike?, class: "ProximityButton") -> ({ ProximityButton })) & ((self: Network, port: PortLike?, class: "WirelessButton") -> ({ WirelessButton })) & ((self: Network, port: PortLike?, class: "DarkConverter") -> ({ DarkConverter })) & ((self: Network, port: PortLike?, class: "Disk") -> ({ Disk })) & ((self: Network, port: PortLike?, class: "LightTube") -> ({ LightTube })) & ((self: Network, port: PortLike?, class: "LifeSensor") -> ({ LifeSensor })) & ((self: Network, port: PortLike?, class: "SteamTurbine") -> ({ SteamTurbine })) & ((self: Network, port: PortLike?, class: "PilotObject") -> ({ PilotObject })) & ((self: Network, port: PortLike?, class: "Component") -> ({ Component })) & ((self: Network, port: PortLike?, class: "Brick") -> ({ Brick })) & ((self: Network, port: PortLike?, class: "Warhead") -> ({ Warhead })) & ((self: Network, port: PortLike?, class: "Transformer") -> ({ Transformer })) & ((self: Network, port: PortLike?, class: "Fireworks") -> ({ Fireworks })) & ((self: Network, port: PortLike?, class: "FactionHub") -> ({ FactionHub })) & ((self: Network, port: PortLike?, class: "TriggerRelay") -> ({ TriggerRelay })) & ((self: Network, port: PortLike?, class: "PowerCell") -> ({ PowerCell })) & ((self: Network, port: PortLike?, class: "Transistor") -> ({ Transistor })) & ((self: Network, port: PortLike?, class: "Piston") -> ({ Piston })) & ((self: Network, port: PortLike?, class: "Treads") -> ({ Treads })) & ((self: Network, port: PortLike?, class: "CrudeWing") -> ({ CrudeWing })) & ((self: Network, port: PortLike?, class: "SteamEngine") -> ({ SteamEngine })) & ((self: Network, port: PortLike?, class: "Microcontroller") -> ({ Microcontroller })) & ((self: Network, port: PortLike?, class: "HeatPump") -> ({ HeatPump })) & ((self: Network, port: PortLike?, class: "Speaker") -> ({ Speaker })) & ((self: Network, port: PortLike?, class: "Hull") -> ({ Hull })) & ((self: Network, port: PortLike?, class: "VehicleSeat") -> ({ VehicleSeat })) & ((self: Network, port: PortLike?, class: "Winch") -> ({ Winch })) & ((self: Network, port: PortLike?, class: "Rotor") -> ({ Rotor })) & ((self: Network, port: PortLike?, class: "Controller") -> ({ Controller })) & ((self: Network, port: PortLike?, class: "Obelisk") -> ({ Obelisk })) & ((self: Network, port: PortLike?, class: "Motor") -> ({ Motor })) & ((self: Network, port: PortLike?, class: "Telescope") -> ({ Telescope })) & ((self: Network, port: PortLike?, class: "BlackBox") -> ({ BlackBox })) & ((self: Network, port: PortLike?, class: "Reactor") -> ({ Reactor })) & ((self: Network, port: PortLike?, class: "Prosthetic") -> ({ Prosthetic })) & ((self: Network, port: PortLike?, class: "Decoupler") -> ({ Decoupler })) & ((self: Network, port: PortLike?, class: "Solenoid") -> ({ Solenoid })) & ((self: Network, port: PortLike?, class: "DevSink") -> ({ DevSink })) & ((self: Network, port: PortLike?, class: "HyperDrive") -> ({ HyperDrive })) & ((self: Network, port: PortLike?, class: "TriggerSwitch") -> ({ TriggerSwitch })) & ((self: Network, port: PortLike?, class: "SolarPanel") -> ({ SolarPanel })) & ((self: Network, port: PortLike?, class: "Boombox") -> ({ Boombox })) & ((self: Network, port: PortLike?, class: "Igniter") -> ({ Igniter })) & ((self: Network, port: PortLike?, class: "DeleteSwitch") -> ({ DeleteSwitch })) & ((self: Network, port: PortLike?, class: "Electromagnet") -> ({ Electromagnet })) & ((self: Network, port: PortLike?, class: "Rocket") -> ({ Rocket })) & ((self: Network, port: PortLike?, class: "Scrapper") -> ({ Scrapper })) & ((self: Network, port: PortLike?, class: "TemperatureGate") -> ({ TemperatureGate })) & ((self: Network, port: PortLike?, class: "RemoteControl") -> ({ RemoteControl })) & ((self: Network, port: PortLike?, class: "Flamethrower") -> ({ Flamethrower })) & ((self: Network, port: PortLike?, class: "Light") -> ({ Light })) & ((self: Network, port: PortLike?, class: "Balloon") -> ({ Balloon })) & ((self: Network, port: PortLike?, class: "DarkReactor") -> ({ DarkReactor })) & ((self: Network, port: PortLike?, class: "Sail") -> ({ Sail })) & ((self: Network, port: PortLike?, class: "Rail") -> ({ Rail })) & ((self: Network, port: PortLike?, class: "RepairLaser") -> ({ RepairLaser })) & ((self: Network, port: PortLike?, class: "Polysilicon") -> ({ Polysilicon })) & ((self: Network, port: PortLike?, class: "Scanner") -> ({ Scanner })) & ((self: Network, port: PortLike?, class: "Furnace") -> ({ Furnace })) & ((self: Network, port: PortLike?, class: "DevSource") -> ({ DevSource })) & ((self: Network, port: PortLike?, class: "AutomaticLaser") -> ({ AutomaticLaser })) & ((self: Network, port: PortLike?, class: "Faucet") -> ({ Faucet })) & ((self: Network, port: PortLike?, class: "Thruster") -> ({ Thruster })) & ((self: Network, port: PortLike?, class: "CombustionTurbine") -> ({ CombustionTurbine })) & ((self: Network, port: PortLike?, class: "TouchScreen") -> ({ TouchScreen })) & ((self: Network, port: PortLike?, class: "HeatCell") -> ({ HeatCell })) & ((self: Network, port: PortLike?, class: "Camera") -> ({ Camera })) & ((self: Network, port: PortLike?, class: "Modem") -> ({ Modem })) & ((self: Network, port: PortLike?, class: "TemperatureSensor") -> ({ TemperatureSensor })) & ((self: Network, port: PortLike?, class: "Engine") -> ({ Engine })) & ((self: Network, port: PortLike?, class: "Radar") -> ({ Radar })) & ((self: Network, port: PortLike?, class: "RepairPlate") -> ({ RepairPlate })) & ((self: Network, port: PortLike?, class: "MiningLaser") -> ({ MiningLaser })) & ((self: Network, port: PortLike?, class: "IonRocket") -> ({ IonRocket })) & ((self: Network, port: PortLike?, class: "BallastTank") -> ({ BallastTank })) & ((self: Network, port: PortLike?, class: "Router") -> ({ Router })) & ((self: Network, port: PortLike?, class: "Explosive") -> ({ Explosive })) & ((self: Network, port: PortLike?, class: "ObjectDetector") -> ({ ObjectDetector })) & ((self: Network, port: PortLike?, class: "StarMap") -> ({ StarMap })) & ((self: Network, port: PortLike?, class: "TractorBeam") -> ({ TractorBeam })) & ((self: Network, port: PortLike?, class: "Turbofan") -> ({ Turbofan })) & ((self: Network, port: PortLike?, class: "Battery") -> ({ Battery })) & ((self: Network, port: PortLike?, class: "Coupler") -> ({ Coupler })) & ((self: Network, port: PortLike?, class: "DevTeleporter") -> ({ DevTeleporter })) & ((self: Network, port: PortLike?, class: "Seat") -> ({ Seat })) & ((self: Network, port: PortLike?, class: "Part100k") -> ({ Part100k })) & ((self: Network, port: PortLike?, class: "Valve") -> ({ Valve })) & ((self: Network, port: PortLike?, class: "Freezer") -> ({ Freezer })) & ((self: Network, port: PortLike?, class: "Melter") -> ({ Melter })) & ((self: Network, port: PortLike?, class: "Railgun") -> ({ Railgun })) & ((self: Network, port: PortLike?, class: "Dispenser") -> ({ Dispenser })) & ((self: Network, port: PortLike?, class: "Wing") -> ({ Wing })) & ((self: Network, port: PortLike?, class: "Anchor") -> ({ Anchor })) & ((self: Network, port: PortLike?, class: "HeatValve") -> ({ HeatValve })) & ((self: Network, port: PortLike?, class: "Constructor") -> ({ Constructor })) & ((self: Network, port: PortLike?, class: "tinnitus") -> ({ tinnitus })) & ((self: Network, port: PortLike?, class: "EnergyBomb") -> ({ EnergyBomb })) & ((self: Network, port: PortLike?, class: "EnergyShield") -> ({ EnergyShield })) & ((self: Network, port: PortLike?, class: "TouchSensor") -> ({ TouchSensor })) & ((self: Network, port: PortLike?, class: "StorageSensor") -> ({ StorageSensor })) & ((self: Network, port: PortLike?, class: "Microphone") -> ({ Microphone })) & ((self: Network, port: PortLike?, class: "Blade") -> ({ Blade })) & ((self: Network, port: PortLike?, class: "Sorter") -> ({ Sorter })) & ((self: Network, port: PortLike?, class: "Hydroponic") -> ({ Hydroponic })) & ((self: Network, port: PortLike?, class: "GravityGenerator") -> ({ GravityGenerator })) & ((self: Network, port: PortLike?, class: "Gyro") -> ({ Gyro })) & ((self: Network, port: PortLike?, class: "WindTurbine") -> ({ WindTurbine })) & ((self: Network, port: PortLike?, class: "Sign") -> ({ Sign })) & ((self: Network, port: PortLike?, class: "ConveyorBelt") -> ({ ConveyorBelt })) & ((self: Network, port: PortLike?, class: "Plastic") -> ({ Plastic })) & ((self: Network, port: PortLike?, class: "Hologram") -> ({ Hologram })) & ((self: Network, port: PortLike?, class: "FourthOfJuly") -> ({ FourthOfJuly })) & ((self: Network, port: PortLike?, class: "Relay") -> ({ Relay })) & ((self: Network, port: PortLike?, class: "Transporter") -> ({ Transporter })) & ((self: Network, port: PortLike?, class: "DevBattery") -> ({ DevBattery })) & ((self: Network, port: PortLike?, class: "Door") -> ({ Door })) & ((self: Network, port: PortLike?, class: "Handle") -> ({ Handle })) & ((self: Network, port: PortLike?, class: "SolarScoop") -> ({ SolarScoop })) & ((self: Network, port: PortLike?, class: "Refinery") -> ({ Refinery })) & ((self: Network, port: PortLike?, class: "Bin") -> ({ Bin })) & ((self: Network, port: PortLike?, class: "Propeller") -> ({ Propeller })) & ((self: Network, port: PortLike?, class: "Kiln") -> ({ Kiln })) & ((self: Network, port: PortLike?, class: "Boiler") -> ({ Boiler })) & ((self: Network, port: PortLike?, class: "Asphalt") -> ({ Asphalt })) & ((self: Network, port: PortLike?, class: "HyperspaceRadar") -> ({ HyperspaceRadar })) & ((self: Network, port: PortLike?, class: "Tank") -> ({ Tank })) & ((self: Network, port: PortLike?, class: "Switch") -> ({ Switch })) & ((self: Network, port: PortLike?, class: "Port") -> ({ Port })) & ((self: Network, port: PortLike?, class: "Beacon") -> ({ Beacon })) & ((self: Network, port: PortLike?, class: "Spotlight") -> ({ Spotlight })) & ((self: Network, port: PortLike?, class: string) -> ({ PilotObject })),
	GetPart: ((self: Network, class: "DelayWire") -> (DelayWire?)) & ((self: Network, class: "Hatch") -> (Hatch?)) & ((self: Network, class: "Screen") -> (Screen?)) & ((self: Network, class: "Extractor") -> (Extractor?)) & ((self: Network, class: "Apparel") -> (Apparel?)) & ((self: Network, class: "CloningBay") -> (CloningBay?)) & ((self: Network, class: "Food") -> (Food?)) & ((self: Network, class: "Filter") -> (Filter?)) & ((self: Network, class: "Antenna") -> (Antenna?)) & ((self: Network, class: "Instrument") -> (Instrument?)) & ((self: Network, class: "ARController") -> (ARController?)) & ((self: Network, class: "Teleporter") -> (Teleporter?)) & ((self: Network, class: "Laser") -> (Laser?)) & ((self: Network, class: "DevHeatStorage") -> (DevHeatStorage?)) & ((self: Network, class: "BurnerGenerator") -> (BurnerGenerator?)) & ((self: Network, class: "DevGravityGenerator") -> (DevGravityGenerator?)) & ((self: Network, class: "Servo") -> (Servo?)) & ((self: Network, class: "DriveBox") -> (DriveBox?)) & ((self: Network, class: "FluidProjector") -> (FluidProjector?)) & ((self: Network, class: "TimeSensor") -> (TimeSensor?)) & ((self: Network, class: "ElectricFence") -> (ElectricFence?)) & ((self: Network, class: "Pump") -> (Pump?)) & ((self: Network, class: "Assembler") -> (Assembler?)) & ((self: Network, class: "Keyboard") -> (Keyboard?)) & ((self: Network, class: "StasisField") -> (StasisField?)) & ((self: Network, class: "LightBridge") -> (LightBridge?)) & ((self: Network, class: "ProximityButton") -> (ProximityButton?)) & ((self: Network, class: "WirelessButton") -> (WirelessButton?)) & ((self: Network, class: "DarkConverter") -> (DarkConverter?)) & ((self: Network, class: "Disk") -> (Disk?)) & ((self: Network, class: "LightTube") -> (LightTube?)) & ((self: Network, class: "LifeSensor") -> (LifeSensor?)) & ((self: Network, class: "SteamTurbine") -> (SteamTurbine?)) & ((self: Network, class: "PilotObject") -> (PilotObject?)) & ((self: Network, class: "Component") -> (Component?)) & ((self: Network, class: "Brick") -> (Brick?)) & ((self: Network, class: "Warhead") -> (Warhead?)) & ((self: Network, class: "Transformer") -> (Transformer?)) & ((self: Network, class: "Fireworks") -> (Fireworks?)) & ((self: Network, class: "FactionHub") -> (FactionHub?)) & ((self: Network, class: "TriggerRelay") -> (TriggerRelay?)) & ((self: Network, class: "PowerCell") -> (PowerCell?)) & ((self: Network, class: "Transistor") -> (Transistor?)) & ((self: Network, class: "Piston") -> (Piston?)) & ((self: Network, class: "Treads") -> (Treads?)) & ((self: Network, class: "CrudeWing") -> (CrudeWing?)) & ((self: Network, class: "SteamEngine") -> (SteamEngine?)) & ((self: Network, class: "Microcontroller") -> (Microcontroller?)) & ((self: Network, class: "HeatPump") -> (HeatPump?)) & ((self: Network, class: "Speaker") -> (Speaker?)) & ((self: Network, class: "Hull") -> (Hull?)) & ((self: Network, class: "VehicleSeat") -> (VehicleSeat?)) & ((self: Network, class: "Winch") -> (Winch?)) & ((self: Network, class: "Rotor") -> (Rotor?)) & ((self: Network, class: "Controller") -> (Controller?)) & ((self: Network, class: "Obelisk") -> (Obelisk?)) & ((self: Network, class: "Motor") -> (Motor?)) & ((self: Network, class: "Telescope") -> (Telescope?)) & ((self: Network, class: "BlackBox") -> (BlackBox?)) & ((self: Network, class: "Reactor") -> (Reactor?)) & ((self: Network, class: "Prosthetic") -> (Prosthetic?)) & ((self: Network, class: "Decoupler") -> (Decoupler?)) & ((self: Network, class: "Solenoid") -> (Solenoid?)) & ((self: Network, class: "DevSink") -> (DevSink?)) & ((self: Network, class: "HyperDrive") -> (HyperDrive?)) & ((self: Network, class: "TriggerSwitch") -> (TriggerSwitch?)) & ((self: Network, class: "SolarPanel") -> (SolarPanel?)) & ((self: Network, class: "Boombox") -> (Boombox?)) & ((self: Network, class: "Igniter") -> (Igniter?)) & ((self: Network, class: "DeleteSwitch") -> (DeleteSwitch?)) & ((self: Network, class: "Electromagnet") -> (Electromagnet?)) & ((self: Network, class: "Rocket") -> (Rocket?)) & ((self: Network, class: "Scrapper") -> (Scrapper?)) & ((self: Network, class: "TemperatureGate") -> (TemperatureGate?)) & ((self: Network, class: "RemoteControl") -> (RemoteControl?)) & ((self: Network, class: "Flamethrower") -> (Flamethrower?)) & ((self: Network, class: "Light") -> (Light?)) & ((self: Network, class: "Balloon") -> (Balloon?)) & ((self: Network, class: "DarkReactor") -> (DarkReactor?)) & ((self: Network, class: "Sail") -> (Sail?)) & ((self: Network, class: "Rail") -> (Rail?)) & ((self: Network, class: "RepairLaser") -> (RepairLaser?)) & ((self: Network, class: "Polysilicon") -> (Polysilicon?)) & ((self: Network, class: "Scanner") -> (Scanner?)) & ((self: Network, class: "Furnace") -> (Furnace?)) & ((self: Network, class: "DevSource") -> (DevSource?)) & ((self: Network, class: "AutomaticLaser") -> (AutomaticLaser?)) & ((self: Network, class: "Faucet") -> (Faucet?)) & ((self: Network, class: "Thruster") -> (Thruster?)) & ((self: Network, class: "CombustionTurbine") -> (CombustionTurbine?)) & ((self: Network, class: "TouchScreen") -> (TouchScreen?)) & ((self: Network, class: "HeatCell") -> (HeatCell?)) & ((self: Network, class: "Camera") -> (Camera?)) & ((self: Network, class: "Modem") -> (Modem?)) & ((self: Network, class: "TemperatureSensor") -> (TemperatureSensor?)) & ((self: Network, class: "Engine") -> (Engine?)) & ((self: Network, class: "Radar") -> (Radar?)) & ((self: Network, class: "RepairPlate") -> (RepairPlate?)) & ((self: Network, class: "MiningLaser") -> (MiningLaser?)) & ((self: Network, class: "IonRocket") -> (IonRocket?)) & ((self: Network, class: "BallastTank") -> (BallastTank?)) & ((self: Network, class: "Router") -> (Router?)) & ((self: Network, class: "Explosive") -> (Explosive?)) & ((self: Network, class: "ObjectDetector") -> (ObjectDetector?)) & ((self: Network, class: "StarMap") -> (StarMap?)) & ((self: Network, class: "TractorBeam") -> (TractorBeam?)) & ((self: Network, class: "Turbofan") -> (Turbofan?)) & ((self: Network, class: "Battery") -> (Battery?)) & ((self: Network, class: "Coupler") -> (Coupler?)) & ((self: Network, class: "DevTeleporter") -> (DevTeleporter?)) & ((self: Network, class: "Seat") -> (Seat?)) & ((self: Network, class: "Part100k") -> (Part100k?)) & ((self: Network, class: "Valve") -> (Valve?)) & ((self: Network, class: "Freezer") -> (Freezer?)) & ((self: Network, class: "Melter") -> (Melter?)) & ((self: Network, class: "Railgun") -> (Railgun?)) & ((self: Network, class: "Dispenser") -> (Dispenser?)) & ((self: Network, class: "Wing") -> (Wing?)) & ((self: Network, class: "Anchor") -> (Anchor?)) & ((self: Network, class: "HeatValve") -> (HeatValve?)) & ((self: Network, class: "Constructor") -> (Constructor?)) & ((self: Network, class: "tinnitus") -> (tinnitus?)) & ((self: Network, class: "EnergyBomb") -> (EnergyBomb?)) & ((self: Network, class: "EnergyShield") -> (EnergyShield?)) & ((self: Network, class: "TouchSensor") -> (TouchSensor?)) & ((self: Network, class: "StorageSensor") -> (StorageSensor?)) & ((self: Network, class: "Microphone") -> (Microphone?)) & ((self: Network, class: "Blade") -> (Blade?)) & ((self: Network, class: "Sorter") -> (Sorter?)) & ((self: Network, class: "Hydroponic") -> (Hydroponic?)) & ((self: Network, class: "GravityGenerator") -> (GravityGenerator?)) & ((self: Network, class: "Gyro") -> (Gyro?)) & ((self: Network, class: "WindTurbine") -> (WindTurbine?)) & ((self: Network, class: "Sign") -> (Sign?)) & ((self: Network, class: "ConveyorBelt") -> (ConveyorBelt?)) & ((self: Network, class: "Plastic") -> (Plastic?)) & ((self: Network, class: "Hologram") -> (Hologram?)) & ((self: Network, class: "FourthOfJuly") -> (FourthOfJuly?)) & ((self: Network, class: "Relay") -> (Relay?)) & ((self: Network, class: "Transporter") -> (Transporter?)) & ((self: Network, class: "DevBattery") -> (DevBattery?)) & ((self: Network, class: "Door") -> (Door?)) & ((self: Network, class: "Handle") -> (Handle?)) & ((self: Network, class: "SolarScoop") -> (SolarScoop?)) & ((self: Network, class: "Refinery") -> (Refinery?)) & ((self: Network, class: "Bin") -> (Bin?)) & ((self: Network, class: "Propeller") -> (Propeller?)) & ((self: Network, class: "Kiln") -> (Kiln?)) & ((self: Network, class: "Boiler") -> (Boiler?)) & ((self: Network, class: "Asphalt") -> (Asphalt?)) & ((self: Network, class: "HyperspaceRadar") -> (HyperspaceRadar?)) & ((self: Network, class: "Tank") -> (Tank?)) & ((self: Network, class: "Switch") -> (Switch?)) & ((self: Network, class: "Port") -> (Port?)) & ((self: Network, class: "Beacon") -> (Beacon?)) & ((self: Network, class: "Spotlight") -> (Spotlight?)) & ((self: Network, class: string) -> (PilotObject)),
	GetPartFromPort: ((self: Network, port: PortLike?, class: "DelayWire") -> (DelayWire?)) & ((self: Network, port: PortLike?, class: "Hatch") -> (Hatch?)) & ((self: Network, port: PortLike?, class: "Screen") -> (Screen?)) & ((self: Network, port: PortLike?, class: "Extractor") -> (Extractor?)) & ((self: Network, port: PortLike?, class: "Apparel") -> (Apparel?)) & ((self: Network, port: PortLike?, class: "CloningBay") -> (CloningBay?)) & ((self: Network, port: PortLike?, class: "Food") -> (Food?)) & ((self: Network, port: PortLike?, class: "Filter") -> (Filter?)) & ((self: Network, port: PortLike?, class: "Antenna") -> (Antenna?)) & ((self: Network, port: PortLike?, class: "Instrument") -> (Instrument?)) & ((self: Network, port: PortLike?, class: "ARController") -> (ARController?)) & ((self: Network, port: PortLike?, class: "Teleporter") -> (Teleporter?)) & ((self: Network, port: PortLike?, class: "Laser") -> (Laser?)) & ((self: Network, port: PortLike?, class: "DevHeatStorage") -> (DevHeatStorage?)) & ((self: Network, port: PortLike?, class: "BurnerGenerator") -> (BurnerGenerator?)) & ((self: Network, port: PortLike?, class: "DevGravityGenerator") -> (DevGravityGenerator?)) & ((self: Network, port: PortLike?, class: "Servo") -> (Servo?)) & ((self: Network, port: PortLike?, class: "DriveBox") -> (DriveBox?)) & ((self: Network, port: PortLike?, class: "FluidProjector") -> (FluidProjector?)) & ((self: Network, port: PortLike?, class: "TimeSensor") -> (TimeSensor?)) & ((self: Network, port: PortLike?, class: "ElectricFence") -> (ElectricFence?)) & ((self: Network, port: PortLike?, class: "Pump") -> (Pump?)) & ((self: Network, port: PortLike?, class: "Assembler") -> (Assembler?)) & ((self: Network, port: PortLike?, class: "Keyboard") -> (Keyboard?)) & ((self: Network, port: PortLike?, class: "StasisField") -> (StasisField?)) & ((self: Network, port: PortLike?, class: "LightBridge") -> (LightBridge?)) & ((self: Network, port: PortLike?, class: "ProximityButton") -> (ProximityButton?)) & ((self: Network, port: PortLike?, class: "WirelessButton") -> (WirelessButton?)) & ((self: Network, port: PortLike?, class: "DarkConverter") -> (DarkConverter?)) & ((self: Network, port: PortLike?, class: "Disk") -> (Disk?)) & ((self: Network, port: PortLike?, class: "LightTube") -> (LightTube?)) & ((self: Network, port: PortLike?, class: "LifeSensor") -> (LifeSensor?)) & ((self: Network, port: PortLike?, class: "SteamTurbine") -> (SteamTurbine?)) & ((self: Network, port: PortLike?, class: "PilotObject") -> (PilotObject?)) & ((self: Network, port: PortLike?, class: "Component") -> (Component?)) & ((self: Network, port: PortLike?, class: "Brick") -> (Brick?)) & ((self: Network, port: PortLike?, class: "Warhead") -> (Warhead?)) & ((self: Network, port: PortLike?, class: "Transformer") -> (Transformer?)) & ((self: Network, port: PortLike?, class: "Fireworks") -> (Fireworks?)) & ((self: Network, port: PortLike?, class: "FactionHub") -> (FactionHub?)) & ((self: Network, port: PortLike?, class: "TriggerRelay") -> (TriggerRelay?)) & ((self: Network, port: PortLike?, class: "PowerCell") -> (PowerCell?)) & ((self: Network, port: PortLike?, class: "Transistor") -> (Transistor?)) & ((self: Network, port: PortLike?, class: "Piston") -> (Piston?)) & ((self: Network, port: PortLike?, class: "Treads") -> (Treads?)) & ((self: Network, port: PortLike?, class: "CrudeWing") -> (CrudeWing?)) & ((self: Network, port: PortLike?, class: "SteamEngine") -> (SteamEngine?)) & ((self: Network, port: PortLike?, class: "Microcontroller") -> (Microcontroller?)) & ((self: Network, port: PortLike?, class: "HeatPump") -> (HeatPump?)) & ((self: Network, port: PortLike?, class: "Speaker") -> (Speaker?)) & ((self: Network, port: PortLike?, class: "Hull") -> (Hull?)) & ((self: Network, port: PortLike?, class: "VehicleSeat") -> (VehicleSeat?)) & ((self: Network, port: PortLike?, class: "Winch") -> (Winch?)) & ((self: Network, port: PortLike?, class: "Rotor") -> (Rotor?)) & ((self: Network, port: PortLike?, class: "Controller") -> (Controller?)) & ((self: Network, port: PortLike?, class: "Obelisk") -> (Obelisk?)) & ((self: Network, port: PortLike?, class: "Motor") -> (Motor?)) & ((self: Network, port: PortLike?, class: "Telescope") -> (Telescope?)) & ((self: Network, port: PortLike?, class: "BlackBox") -> (BlackBox?)) & ((self: Network, port: PortLike?, class: "Reactor") -> (Reactor?)) & ((self: Network, port: PortLike?, class: "Prosthetic") -> (Prosthetic?)) & ((self: Network, port: PortLike?, class: "Decoupler") -> (Decoupler?)) & ((self: Network, port: PortLike?, class: "Solenoid") -> (Solenoid?)) & ((self: Network, port: PortLike?, class: "DevSink") -> (DevSink?)) & ((self: Network, port: PortLike?, class: "HyperDrive") -> (HyperDrive?)) & ((self: Network, port: PortLike?, class: "TriggerSwitch") -> (TriggerSwitch?)) & ((self: Network, port: PortLike?, class: "SolarPanel") -> (SolarPanel?)) & ((self: Network, port: PortLike?, class: "Boombox") -> (Boombox?)) & ((self: Network, port: PortLike?, class: "Igniter") -> (Igniter?)) & ((self: Network, port: PortLike?, class: "DeleteSwitch") -> (DeleteSwitch?)) & ((self: Network, port: PortLike?, class: "Electromagnet") -> (Electromagnet?)) & ((self: Network, port: PortLike?, class: "Rocket") -> (Rocket?)) & ((self: Network, port: PortLike?, class: "Scrapper") -> (Scrapper?)) & ((self: Network, port: PortLike?, class: "TemperatureGate") -> (TemperatureGate?)) & ((self: Network, port: PortLike?, class: "RemoteControl") -> (RemoteControl?)) & ((self: Network, port: PortLike?, class: "Flamethrower") -> (Flamethrower?)) & ((self: Network, port: PortLike?, class: "Light") -> (Light?)) & ((self: Network, port: PortLike?, class: "Balloon") -> (Balloon?)) & ((self: Network, port: PortLike?, class: "DarkReactor") -> (DarkReactor?)) & ((self: Network, port: PortLike?, class: "Sail") -> (Sail?)) & ((self: Network, port: PortLike?, class: "Rail") -> (Rail?)) & ((self: Network, port: PortLike?, class: "RepairLaser") -> (RepairLaser?)) & ((self: Network, port: PortLike?, class: "Polysilicon") -> (Polysilicon?)) & ((self: Network, port: PortLike?, class: "Scanner") -> (Scanner?)) & ((self: Network, port: PortLike?, class: "Furnace") -> (Furnace?)) & ((self: Network, port: PortLike?, class: "DevSource") -> (DevSource?)) & ((self: Network, port: PortLike?, class: "AutomaticLaser") -> (AutomaticLaser?)) & ((self: Network, port: PortLike?, class: "Faucet") -> (Faucet?)) & ((self: Network, port: PortLike?, class: "Thruster") -> (Thruster?)) & ((self: Network, port: PortLike?, class: "CombustionTurbine") -> (CombustionTurbine?)) & ((self: Network, port: PortLike?, class: "TouchScreen") -> (TouchScreen?)) & ((self: Network, port: PortLike?, class: "HeatCell") -> (HeatCell?)) & ((self: Network, port: PortLike?, class: "Camera") -> (Camera?)) & ((self: Network, port: PortLike?, class: "Modem") -> (Modem?)) & ((self: Network, port: PortLike?, class: "TemperatureSensor") -> (TemperatureSensor?)) & ((self: Network, port: PortLike?, class: "Engine") -> (Engine?)) & ((self: Network, port: PortLike?, class: "Radar") -> (Radar?)) & ((self: Network, port: PortLike?, class: "RepairPlate") -> (RepairPlate?)) & ((self: Network, port: PortLike?, class: "MiningLaser") -> (MiningLaser?)) & ((self: Network, port: PortLike?, class: "IonRocket") -> (IonRocket?)) & ((self: Network, port: PortLike?, class: "BallastTank") -> (BallastTank?)) & ((self: Network, port: PortLike?, class: "Router") -> (Router?)) & ((self: Network, port: PortLike?, class: "Explosive") -> (Explosive?)) & ((self: Network, port: PortLike?, class: "ObjectDetector") -> (ObjectDetector?)) & ((self: Network, port: PortLike?, class: "StarMap") -> (StarMap?)) & ((self: Network, port: PortLike?, class: "TractorBeam") -> (TractorBeam?)) & ((self: Network, port: PortLike?, class: "Turbofan") -> (Turbofan?)) & ((self: Network, port: PortLike?, class: "Battery") -> (Battery?)) & ((self: Network, port: PortLike?, class: "Coupler") -> (Coupler?)) & ((self: Network, port: PortLike?, class: "DevTeleporter") -> (DevTeleporter?)) & ((self: Network, port: PortLike?, class: "Seat") -> (Seat?)) & ((self: Network, port: PortLike?, class: "Part100k") -> (Part100k?)) & ((self: Network, port: PortLike?, class: "Valve") -> (Valve?)) & ((self: Network, port: PortLike?, class: "Freezer") -> (Freezer?)) & ((self: Network, port: PortLike?, class: "Melter") -> (Melter?)) & ((self: Network, port: PortLike?, class: "Railgun") -> (Railgun?)) & ((self: Network, port: PortLike?, class: "Dispenser") -> (Dispenser?)) & ((self: Network, port: PortLike?, class: "Wing") -> (Wing?)) & ((self: Network, port: PortLike?, class: "Anchor") -> (Anchor?)) & ((self: Network, port: PortLike?, class: "HeatValve") -> (HeatValve?)) & ((self: Network, port: PortLike?, class: "Constructor") -> (Constructor?)) & ((self: Network, port: PortLike?, class: "tinnitus") -> (tinnitus?)) & ((self: Network, port: PortLike?, class: "EnergyBomb") -> (EnergyBomb?)) & ((self: Network, port: PortLike?, class: "EnergyShield") -> (EnergyShield?)) & ((self: Network, port: PortLike?, class: "TouchSensor") -> (TouchSensor?)) & ((self: Network, port: PortLike?, class: "StorageSensor") -> (StorageSensor?)) & ((self: Network, port: PortLike?, class: "Microphone") -> (Microphone?)) & ((self: Network, port: PortLike?, class: "Blade") -> (Blade?)) & ((self: Network, port: PortLike?, class: "Sorter") -> (Sorter?)) & ((self: Network, port: PortLike?, class: "Hydroponic") -> (Hydroponic?)) & ((self: Network, port: PortLike?, class: "GravityGenerator") -> (GravityGenerator?)) & ((self: Network, port: PortLike?, class: "Gyro") -> (Gyro?)) & ((self: Network, port: PortLike?, class: "WindTurbine") -> (WindTurbine?)) & ((self: Network, port: PortLike?, class: "Sign") -> (Sign?)) & ((self: Network, port: PortLike?, class: "ConveyorBelt") -> (ConveyorBelt?)) & ((self: Network, port: PortLike?, class: "Plastic") -> (Plastic?)) & ((self: Network, port: PortLike?, class: "Hologram") -> (Hologram?)) & ((self: Network, port: PortLike?, class: "FourthOfJuly") -> (FourthOfJuly?)) & ((self: Network, port: PortLike?, class: "Relay") -> (Relay?)) & ((self: Network, port: PortLike?, class: "Transporter") -> (Transporter?)) & ((self: Network, port: PortLike?, class: "DevBattery") -> (DevBattery?)) & ((self: Network, port: PortLike?, class: "Door") -> (Door?)) & ((self: Network, port: PortLike?, class: "Handle") -> (Handle?)) & ((self: Network, port: PortLike?, class: "SolarScoop") -> (SolarScoop?)) & ((self: Network, port: PortLike?, class: "Refinery") -> (Refinery?)) & ((self: Network, port: PortLike?, class: "Bin") -> (Bin?)) & ((self: Network, port: PortLike?, class: "Propeller") -> (Propeller?)) & ((self: Network, port: PortLike?, class: "Kiln") -> (Kiln?)) & ((self: Network, port: PortLike?, class: "Boiler") -> (Boiler?)) & ((self: Network, port: PortLike?, class: "Asphalt") -> (Asphalt?)) & ((self: Network, port: PortLike?, class: "HyperspaceRadar") -> (HyperspaceRadar?)) & ((self: Network, port: PortLike?, class: "Tank") -> (Tank?)) & ((self: Network, port: PortLike?, class: "Switch") -> (Switch?)) & ((self: Network, port: PortLike?, class: "Port") -> (Port?)) & ((self: Network, port: PortLike?, class: "Beacon") -> (Beacon?)) & ((self: Network, port: PortLike?, class: "Spotlight") -> (Spotlight?)) & ((self: Network, port: PortLike?, class: string) -> (PilotObject)),
	GetSubnet: (self: Network, port: PortLike?) -> (Network),
	GetParts: ((self: Network, class: "DelayWire") -> ({ DelayWire })) & ((self: Network, class: "Hatch") -> ({ Hatch })) & ((self: Network, class: "Screen") -> ({ Screen })) & ((self: Network, class: "Extractor") -> ({ Extractor })) & ((self: Network, class: "Apparel") -> ({ Apparel })) & ((self: Network, class: "CloningBay") -> ({ CloningBay })) & ((self: Network, class: "Food") -> ({ Food })) & ((self: Network, class: "Filter") -> ({ Filter })) & ((self: Network, class: "Antenna") -> ({ Antenna })) & ((self: Network, class: "Instrument") -> ({ Instrument })) & ((self: Network, class: "ARController") -> ({ ARController })) & ((self: Network, class: "Teleporter") -> ({ Teleporter })) & ((self: Network, class: "Laser") -> ({ Laser })) & ((self: Network, class: "DevHeatStorage") -> ({ DevHeatStorage })) & ((self: Network, class: "BurnerGenerator") -> ({ BurnerGenerator })) & ((self: Network, class: "DevGravityGenerator") -> ({ DevGravityGenerator })) & ((self: Network, class: "Servo") -> ({ Servo })) & ((self: Network, class: "DriveBox") -> ({ DriveBox })) & ((self: Network, class: "FluidProjector") -> ({ FluidProjector })) & ((self: Network, class: "TimeSensor") -> ({ TimeSensor })) & ((self: Network, class: "ElectricFence") -> ({ ElectricFence })) & ((self: Network, class: "Pump") -> ({ Pump })) & ((self: Network, class: "Assembler") -> ({ Assembler })) & ((self: Network, class: "Keyboard") -> ({ Keyboard })) & ((self: Network, class: "StasisField") -> ({ StasisField })) & ((self: Network, class: "LightBridge") -> ({ LightBridge })) & ((self: Network, class: "ProximityButton") -> ({ ProximityButton })) & ((self: Network, class: "WirelessButton") -> ({ WirelessButton })) & ((self: Network, class: "DarkConverter") -> ({ DarkConverter })) & ((self: Network, class: "Disk") -> ({ Disk })) & ((self: Network, class: "LightTube") -> ({ LightTube })) & ((self: Network, class: "LifeSensor") -> ({ LifeSensor })) & ((self: Network, class: "SteamTurbine") -> ({ SteamTurbine })) & ((self: Network, class: "PilotObject") -> ({ PilotObject })) & ((self: Network, class: "Component") -> ({ Component })) & ((self: Network, class: "Brick") -> ({ Brick })) & ((self: Network, class: "Warhead") -> ({ Warhead })) & ((self: Network, class: "Transformer") -> ({ Transformer })) & ((self: Network, class: "Fireworks") -> ({ Fireworks })) & ((self: Network, class: "FactionHub") -> ({ FactionHub })) & ((self: Network, class: "TriggerRelay") -> ({ TriggerRelay })) & ((self: Network, class: "PowerCell") -> ({ PowerCell })) & ((self: Network, class: "Transistor") -> ({ Transistor })) & ((self: Network, class: "Piston") -> ({ Piston })) & ((self: Network, class: "Treads") -> ({ Treads })) & ((self: Network, class: "CrudeWing") -> ({ CrudeWing })) & ((self: Network, class: "SteamEngine") -> ({ SteamEngine })) & ((self: Network, class: "Microcontroller") -> ({ Microcontroller })) & ((self: Network, class: "HeatPump") -> ({ HeatPump })) & ((self: Network, class: "Speaker") -> ({ Speaker })) & ((self: Network, class: "Hull") -> ({ Hull })) & ((self: Network, class: "VehicleSeat") -> ({ VehicleSeat })) & ((self: Network, class: "Winch") -> ({ Winch })) & ((self: Network, class: "Rotor") -> ({ Rotor })) & ((self: Network, class: "Controller") -> ({ Controller })) & ((self: Network, class: "Obelisk") -> ({ Obelisk })) & ((self: Network, class: "Motor") -> ({ Motor })) & ((self: Network, class: "Telescope") -> ({ Telescope })) & ((self: Network, class: "BlackBox") -> ({ BlackBox })) & ((self: Network, class: "Reactor") -> ({ Reactor })) & ((self: Network, class: "Prosthetic") -> ({ Prosthetic })) & ((self: Network, class: "Decoupler") -> ({ Decoupler })) & ((self: Network, class: "Solenoid") -> ({ Solenoid })) & ((self: Network, class: "DevSink") -> ({ DevSink })) & ((self: Network, class: "HyperDrive") -> ({ HyperDrive })) & ((self: Network, class: "TriggerSwitch") -> ({ TriggerSwitch })) & ((self: Network, class: "SolarPanel") -> ({ SolarPanel })) & ((self: Network, class: "Boombox") -> ({ Boombox })) & ((self: Network, class: "Igniter") -> ({ Igniter })) & ((self: Network, class: "DeleteSwitch") -> ({ DeleteSwitch })) & ((self: Network, class: "Electromagnet") -> ({ Electromagnet })) & ((self: Network, class: "Rocket") -> ({ Rocket })) & ((self: Network, class: "Scrapper") -> ({ Scrapper })) & ((self: Network, class: "TemperatureGate") -> ({ TemperatureGate })) & ((self: Network, class: "RemoteControl") -> ({ RemoteControl })) & ((self: Network, class: "Flamethrower") -> ({ Flamethrower })) & ((self: Network, class: "Light") -> ({ Light })) & ((self: Network, class: "Balloon") -> ({ Balloon })) & ((self: Network, class: "DarkReactor") -> ({ DarkReactor })) & ((self: Network, class: "Sail") -> ({ Sail })) & ((self: Network, class: "Rail") -> ({ Rail })) & ((self: Network, class: "RepairLaser") -> ({ RepairLaser })) & ((self: Network, class: "Polysilicon") -> ({ Polysilicon })) & ((self: Network, class: "Scanner") -> ({ Scanner })) & ((self: Network, class: "Furnace") -> ({ Furnace })) & ((self: Network, class: "DevSource") -> ({ DevSource })) & ((self: Network, class: "AutomaticLaser") -> ({ AutomaticLaser })) & ((self: Network, class: "Faucet") -> ({ Faucet })) & ((self: Network, class: "Thruster") -> ({ Thruster })) & ((self: Network, class: "CombustionTurbine") -> ({ CombustionTurbine })) & ((self: Network, class: "TouchScreen") -> ({ TouchScreen })) & ((self: Network, class: "HeatCell") -> ({ HeatCell })) & ((self: Network, class: "Camera") -> ({ Camera })) & ((self: Network, class: "Modem") -> ({ Modem })) & ((self: Network, class: "TemperatureSensor") -> ({ TemperatureSensor })) & ((self: Network, class: "Engine") -> ({ Engine })) & ((self: Network, class: "Radar") -> ({ Radar })) & ((self: Network, class: "RepairPlate") -> ({ RepairPlate })) & ((self: Network, class: "MiningLaser") -> ({ MiningLaser })) & ((self: Network, class: "IonRocket") -> ({ IonRocket })) & ((self: Network, class: "BallastTank") -> ({ BallastTank })) & ((self: Network, class: "Router") -> ({ Router })) & ((self: Network, class: "Explosive") -> ({ Explosive })) & ((self: Network, class: "ObjectDetector") -> ({ ObjectDetector })) & ((self: Network, class: "StarMap") -> ({ StarMap })) & ((self: Network, class: "TractorBeam") -> ({ TractorBeam })) & ((self: Network, class: "Turbofan") -> ({ Turbofan })) & ((self: Network, class: "Battery") -> ({ Battery })) & ((self: Network, class: "Coupler") -> ({ Coupler })) & ((self: Network, class: "DevTeleporter") -> ({ DevTeleporter })) & ((self: Network, class: "Seat") -> ({ Seat })) & ((self: Network, class: "Part100k") -> ({ Part100k })) & ((self: Network, class: "Valve") -> ({ Valve })) & ((self: Network, class: "Freezer") -> ({ Freezer })) & ((self: Network, class: "Melter") -> ({ Melter })) & ((self: Network, class: "Railgun") -> ({ Railgun })) & ((self: Network, class: "Dispenser") -> ({ Dispenser })) & ((self: Network, class: "Wing") -> ({ Wing })) & ((self: Network, class: "Anchor") -> ({ Anchor })) & ((self: Network, class: "HeatValve") -> ({ HeatValve })) & ((self: Network, class: "Constructor") -> ({ Constructor })) & ((self: Network, class: "tinnitus") -> ({ tinnitus })) & ((self: Network, class: "EnergyBomb") -> ({ EnergyBomb })) & ((self: Network, class: "EnergyShield") -> ({ EnergyShield })) & ((self: Network, class: "TouchSensor") -> ({ TouchSensor })) & ((self: Network, class: "StorageSensor") -> ({ StorageSensor })) & ((self: Network, class: "Microphone") -> ({ Microphone })) & ((self: Network, class: "Blade") -> ({ Blade })) & ((self: Network, class: "Sorter") -> ({ Sorter })) & ((self: Network, class: "Hydroponic") -> ({ Hydroponic })) & ((self: Network, class: "GravityGenerator") -> ({ GravityGenerator })) & ((self: Network, class: "Gyro") -> ({ Gyro })) & ((self: Network, class: "WindTurbine") -> ({ WindTurbine })) & ((self: Network, class: "Sign") -> ({ Sign })) & ((self: Network, class: "ConveyorBelt") -> ({ ConveyorBelt })) & ((self: Network, class: "Plastic") -> ({ Plastic })) & ((self: Network, class: "Hologram") -> ({ Hologram })) & ((self: Network, class: "FourthOfJuly") -> ({ FourthOfJuly })) & ((self: Network, class: "Relay") -> ({ Relay })) & ((self: Network, class: "Transporter") -> ({ Transporter })) & ((self: Network, class: "DevBattery") -> ({ DevBattery })) & ((self: Network, class: "Door") -> ({ Door })) & ((self: Network, class: "Handle") -> ({ Handle })) & ((self: Network, class: "SolarScoop") -> ({ SolarScoop })) & ((self: Network, class: "Refinery") -> ({ Refinery })) & ((self: Network, class: "Bin") -> ({ Bin })) & ((self: Network, class: "Propeller") -> ({ Propeller })) & ((self: Network, class: "Kiln") -> ({ Kiln })) & ((self: Network, class: "Boiler") -> ({ Boiler })) & ((self: Network, class: "Asphalt") -> ({ Asphalt })) & ((self: Network, class: "HyperspaceRadar") -> ({ HyperspaceRadar })) & ((self: Network, class: "Tank") -> ({ Tank })) & ((self: Network, class: "Switch") -> ({ Switch })) & ((self: Network, class: "Port") -> ({ Port })) & ((self: Network, class: "Beacon") -> ({ Beacon })) & ((self: Network, class: "Spotlight") -> ({ Spotlight })) & ((self: Network, class: string) -> ({ PilotObject })),
	GetHistory: (self: Network) -> ({
		[PilotObject]: true,
	}),
	GetPorts: (self: Network, port: PortLike?) -> ({ Port }),
	__index: Network,
	new: (rootParts: { PilotObject }, parentNetwork: Network?) -> (Network),
}
export type Range = string
export type ARCamera = {
	FieldOfViewMode: Enum.FieldOfViewMode,
	FieldOfView: number,
	CFrame: CFrame,
	NearPlaneZ: number,
	ViewportSizeUI: Vector2,
	RenderCFrame: CFrame,
	CameraType: Enum.CameraType,
	Focus: CFrame,
	HeadScale: number,
	ViewportSize: Vector2,
	MaxAxisFieldOfView: number,
	DiagonalFieldOfView: number,
}
export type ARCursor = {
	WorldPosition: Vector3,
	Origin: Vector3,
	UserId: number,
	Target: PilotObject,
	Pressed: boolean,
	UnitRay: Ray,
	Camera: ARCamera,
	ScreenPosition: Vector2,
	UserCFrames: {
		RightHand: CFrame,
		LeftHand: CFrame,
		Head: CFrame,
	},
	Y: number,
	Player: string,
	VirtualWorldPosition: Vector3,
	Hit: CFrame,
	X: number,
	VirtualTarget: BasePart,
	MouseDelta: Vector2,
	UserInput: ARInput,
}
type ARInput = {
	Keyboard: { InputObject },
	VREnabled: boolean,
	Mouse: { InputObject },
	GamepadEnabled: boolean,
	LastInputType: Enum.UserInputType,
	Gamepad: {
		[Enum.UserInputType]: { InputObject },
	},
	KeyboardEnabled: boolean,
	TouchEnabled: boolean,
}
export type UserInputObject = {
	KeyName: string,
	UserInputState: Enum.UserInputState,
	UserInputType: Enum.UserInputType,
	KeyCode: Enum.KeyCode,
}
export type Cursor = {
	Y: number,
	Player: string,
	X: number,
	UserId: number,
	Pressed: boolean,
}
export type ObjectDetectorHitNothing = {
	Distance: number,
	Name: never,
	Position: never,
	Color: never,
	isTerrain: true,
	CFrame: never,
	Size: never,
}
export type ObjectDetectorHitTerrain = {
	Distance: number,
	Name: "Head" | "Torso" | "Left Arm" | "Right Arm" | "Left Leg" | "Right Leg" | "Collider" | string,
	Position: Vector3,
	Color: Color3,
	isTerrain: true,
	CFrame: CFrame,
	Size: Vector3,
}
export type ObjectDetectorHitData = ObjectDetectorHitNothing | ObjectDetectorHitTerrain | ObjectDetectorHitObject
export type ObjectDetectorHitObject = {
	Color: Color3,
	LockedBy: number?,
	Distance: number,
	Name: string,
	Position: Vector3,
	Size: Vector3,
	isTerrain: false,
	CFrame: CFrame,
	CreatedBy: number?,
}
export type ResourceString = string
export type PortLike = Port | number
export type ModemRequestResponse = {
	StatusMessage: string,
	Success: boolean,
	StatusCode: number,
	Headers: {
		[string]: any,
	},
	Body: any,
}
export type ModemRequest = {
	Method: ("GET" | "POST" | "PUSH" | "PATCH" | "DELETE")?,
	Compress: Enum.HttpCompression?,
	Url: string,
	Headers: {
		[string]: any,
	}?,
	Body: string?,
}
type MethodParameter = {
	Type: string?,
	Description: string?,
	Name: string?,
}
export type MethodData = {
	Name: string,
	Arguments: { MethodParameter },
	Description: string?,
	Results: { MethodParameter },
}
export type ConfigurableData = {
	Type: string,
	Description: string,
	Options: ({ string } | { number })?,
	DefaultValue: any?,
	Name: string,
}
export type FileSystem = {
	split: (pathname: string) -> ({ string }),
	copy: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (),
	mkdir: (self: FileSystem, pathname: string?) -> (),
	pwd: (self: FileSystem) -> (string),
	readdir: (self: FileSystem, pathname: string) -> ({ string }),
	__index: FileSystem,
	new: (source: (FileSystemRoot | FileSystemDirectory)?) -> (FileSystem),
	separator: string,
	resolve: (pathname: string) -> (string),
	parentdir: (pathname: string) -> (string),
	join: (...string) -> (string),
	filename: (pathname: string) -> (string),
	unlink: (self: FileSystem, pathname: string) -> (),
	readfile: (self: FileSystem, filepath: string) -> (string),
	exists: (pathname: string) -> (boolean),
	moveMerge: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (),
	mklink: (self: FileSystem, linkName: string, targetName: string?) -> (),
	writefile: (self: FileSystem, filepath: string, contents: string) -> (),
	rename: (self: FileSystem, pathnameFrom: string, pathnameTo: string?) -> (),
	chdir: (self: FileSystem, pathname: string) -> (string),
}
export type RawFileSystem = {
	SYSTEM_READONLY: FileAttributes,
	Directory: (contents: {
		[string]: FileSystemFileNode,
	}, attributes: FileAttributes, readonly: boolean?) -> (FileSystemDirectory),
	write: (self: RawFileSystem, root: FileSystemRoot, pathname: string, node: FileSystemFileNode, options: FileSystemOperationOptions?) -> (),
	Link: (pathname: string, attributes: FileAttributes) -> (FileSystemLink),
	Device: (device: any, attributes: FileAttributes) -> (FileSystemDevice),
	SYSTEM_NOACCESS: FileAttributes,
	read: (self: RawFileSystem, root: FileSystemRoot, pathname: string, options: FileSystemOperationOptions?) -> (FileSystemFileNode?),
	readlink: (self: RawFileSystem, root: FileSystemRoot, link: FileSystemLink, options: FileSystemOperationOptions?) -> (FileSystemFileNode?),
	File: (contents: string, attributes: FileAttributes) -> (FileSystemFile),
	Root: (root: FileSystemDirectory, attributes: FileAttributes) -> (FileSystemRoot),
}
type primitive = string | number | boolean | { primitive } | {
	[primitive]: primitive,
}
export type FileSystemDevice = {
	device: any,
	kind: "device",
	attributes: FileAttributes?,
}
export type FileSystemFile = {
	kind: "file",
	attributes: FileAttributes?,
	contents: string,
}
export type FileSystemFileNode = FileSystemDirectory | FileSystemFile | FileSystemLink | FileSystemRoot | FileSystemDevice
export type FileSystemLink = {
	target: string,
	kind: "link",
	attributes: FileAttributes?,
}
export type FileSystemRoot = {
	pwd: string,
	kind: "root",
	attributes: FileAttributes?,
	root: FileSystemDirectory,
}
export type FileSystemDirectory = {
	kind: "directory",
	attributes: FileAttributes?,
	contents: {
		[string]: FileSystemFileNode,
	},
}
export type FileAttributes = {
	permissions: ({
		userPermissions: {
			[number]: FilePermissions,
		}?,
		owner: "system" | number,
	} | FilePermissions)?,
	metadata: {
		[primitive]: primitive,
	}?,
}
export type FilePermissions = {
	write: boolean?,
	read: boolean?,
}
export type FileSystemOperationOptions = {
	ignorePermissions: boolean?,
	ignoreLinks: boolean?,
}
type TerrainData = {
	TreeSettings: {
		branch_size_percentage: {
			max: {
				height: number,
				width: number,
			},
			min: {
				height: number,
				width: number,
			},
		},
		branch_angles: { number },
		trunk_size: {
			max: {
				height: number,
				width: number,
			},
			min: {
				height: number,
				width: number,
			},
		},
		branch_offset: { number },
		amount_of_branches: { number },
		amount_of_splits: { number },
	},
	Slopes: { number },
	Life: boolean,
	Water: boolean,
	Temperature: { number },
	Height: { number },
	RockDensity: { number },
	MountainDensity: { number },
	Roughness: { number },
}
export type CompleteRegionInfo = OrbitRegionInfo | SpaceRegionInfo | BlackHoleRegionInfo | StarRegionInfo | PlanetRegionInfo
export type PlanetRegionInfo = {
	StarType: never,
	BlackHoleSize: never,
	StarSize: never,
	OrbitBody: never,
	PlanetData: {
		DayCycleIncrement: number,
		EnterLocation: RegionEntryLocation,
		PrimaryColor: RegionColor,
		Gravity: number,
		TerrainConfig: TerrainData,
		GenerationHeightScale: number,
		Temperature: number,
		Rings: RingData?,
		PlanetType: PlanetType,
		StartingTime: number,
		Atmosphere: boolean,
		Resources: { string },
		SecondaryColor: RegionColor,
		PlanetMaterial: "Grass" | "Sand" | "Snow" | "Rock1" | "Rock2",
	},
} & PlayableRegionInfo
export type StarRegionInfo = {
	StarType: StarType,
	BlackHoleSize: never,
	EnterLocation: RegionEntryLocation,
	StarSize: number,
	OrbitBody: never,
	PlanetData: never,
} & PlayableRegionInfo
type RegionColor = {
	B: number,
	G: number,
	R: number,
}
export type OrbitRegionInfo = {
	OrbitBody: BlackHoleRegionInfo | StarRegionInfo | PlanetRegionInfo,
	RegionType: "Orbit",
} & PlayableRegionInfo
export type PlayableRegionInfo = {
	Name: string,
	EnterLocation: RegionEntryLocation,
	Coordinate: Coordinates,
	StringCoordinate: string,
	RegionServer: string,
	RegionSeed: number,
}
type RegionEntryLocation = {
	Y: number,
	X: number,
	Z: number,
}
type RingData = {
	RingsAmount: number,
	RingsEnd: number,
	RingsType: "Ice" | "Stone",
	RingStart: number,
}
export type SpaceRegionInfo = {
	RegionType: "Space",
	OrbitBody: never,
} & PlayableRegionInfo
export type BlackHoleRegionInfo = {
	StarSize: never,
	BlackHoleSize: number,
	EnterLocation: RegionEntryLocation,
	StarType: never,
	OrbitBody: never,
	PlanetData: never,
} & PlayableRegionInfo
export type Coordinates = typeof(setmetatable(
	{} :: {
		InPlanet: boolean,
		SolarCoordinates: Vector2,
		UniverseCoordinates: Vector2,
	},
	{} :: CoordinatesMetatable
))
type CoordinatesMetatable = {
	type: "Coordinates",
	__eq: (self: Coordinates, Coordinates) -> (boolean),
	__mul: (self: Coordinates, Coordinates) -> (Coordinates),
	ToArray: (self: Coordinates) -> ({ number | boolean }),
	__add: (self: Coordinates, Coordinates) -> (Coordinates),
	__div: (self: Coordinates, Coordinates) -> (Coordinates),
	Clone: (self: Coordinates) -> (Coordinates),
	GetRandom: (self: Coordinates) -> (Random),
	GetSeed: (self: Coordinates) -> (number),
	CoordStringWithoutPlanet: (self: Coordinates) -> (string),
	__index: CoordinatesMetatable,
	__tostring: (self: Coordinates) -> (string),
}
export type SimplePlanetRegionInfo = {
	HasAtmosphere: boolean,
	Type: "Planet",
	Color: Color3,
	Gravity: number,
	SubType: PlanetType,
	BeaconCount: number,
	Temperature: number,
	Name: string,
	Resources: { string },
	TidallyLocked: boolean,
	HasRings: boolean,
}
export type SimpleSpaceRegionInfo = {
	BeaconCount: number,
	Type: "Planet",
	Name: string,
	HasRings: boolean,
	SubType: never,
	TidallyLocked: boolean,
}
export type SimpleStarRegionInfo = {
	BeaconCount: number,
	Type: "Star",
	Name: string,
	SubType: StarType,
	Size: number,
}
export type RegionInfo = SimpleSpaceRegionInfo | SimplePlanetRegionInfo | SimpleBlackHoleRegionInfo | SimpleStarRegionInfo
export type SimpleBlackHoleRegionInfo = {
	BeaconCount: number,
	Type: "BlackHole",
	Name: string,
	Size: number,
}
export type StarType = "Red" | "Orange" | "Yellow" | "Blue" | "Neutron"
export type CelestialBodyType = "Planet" | "BlackHole" | "Star"
export type PlanetType = "Desert" | "Terra" | "EarthLike" | "Ocean" | "Tundra" | "Forest" | "Exotic" | "Barren" | "Gas" | "RobotDepot" | "RobotFactory"
type EventConnectionMetatable<Name = string, Callback = (...unknown) -> ()> = {
	Unbind: (self: EventConnection<Name, Callback>) -> (),
	__index: EventConnectionMetatable<Name, Callback>,
	Disconnect: (self: EventConnection<Name, Callback>) -> (),
	__mode: "v",
}
export type Event<Name = string, Callback = (...unknown) -> (), Parameters... = ...unknown> = {
	_eventName: Name,
	Connect: (self: Event<Name, Callback, Parameters...>, callback: Callback) -> (EventConnection<Name, Callback>),
}
export type EventConnection<Name = string, Callback = (...unknown) -> ()> = typeof(setmetatable(
	{} :: {
		_eventName: Name,
		Callback: Callback,
	},
	{} :: EventConnectionMetatable<Name, Callback>
))
declare class PilotObject
	Durability: number
	CFrame: CFrame
	function IsDestroyed(self): (boolean)
	Mass: number
	function GetColor(self): (Color3)
	function Click(self): ()
	function GetNameOfOwnerAsync(self): (string?)
	function GetConfigurables(self): ({
		[string]: ConfigurableData,
	})
	AssemblyMass: number
	AssemblyLinearVelocity: Vector3
	Health: number
	ClassName: "PilotObject"
	Orientation: Vector3
	AssemblyCenterOfMass: Vector3
	CreatedBy: number?
	function GetComponent(self, componentName: ComponentName): (Component?)
	Heat: number
	Destroying: Event<"Destroying", () -> ()>
	Color: Color3
	function CanUninstallComponent(self, componentName: ComponentName?): (boolean)
	function HasComponent(self): (boolean)
	Material: Enum.Material
	PartLocked: number?
	function GetEvents(self): ({ string })
	function CanInstallComponent(self, componentName: ComponentName?): (boolean)
	Anchored: boolean
	function GetOwnerId(self): (number?)
	function GetShape(self): (string?)
	function Trigger(self): ()
	function GetDurability(self): (number)
	GUID: string
	function GetMethods(self): ({
		[string]: MethodData,
	})
	function ListComponents(self): ({ string })
	Temperature: number
	function HasPermission(self, permission: Permission): (boolean)
	Position: Vector3
	function IsGrounded(self): (boolean)
	Size: Vector3
	function GetSize(self): (Vector3)
	function GetTemperature(self): (number)
end
declare class Spotlight extends PilotObject
	ClassName: "Spotlight"
	function SetColor(self, color: Color3): ()
end
declare class Silicon extends PilotObject
	ClassName: "Silicon"
end
declare class Beacon extends PilotObject
	ShowOnMap: boolean
	BeaconName: string
	Configured: Event<"Configured", (configurerId: number) -> ()>
	ClassName: "Beacon"
	function Configure(self, configuration: BeaconConfiguration): ()
end
declare class Port extends PilotObject
	PortID: number
	function Configure(self, configuration: PortConfiguration): ()
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	ClassName: "Port"
end
declare class Switch extends PilotObject
	function Configure(self, configuration: SwitchConfiguration): ()
	ClassName: "Switch"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class Tank extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function Configure(self, configuration: TankConfiguration): ()
	Resource: string
	CanBeCraftedFrom: boolean
	function GetResourceAmount(self): (number)
	ClassName: "Tank"
	function GetAmount(self): (number)
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	function GetResource(self): (string | "nil")
end
declare class NuclearWaste extends PilotObject
	ClassName: "NuclearWaste"
end
declare class HyperspaceRadar extends PilotObject
	ViewCoordinates: Coordinates
	function Configure(self, configuration: HyperspaceRadarConfiguration): ()
	ClassName: "HyperspaceRadar"
end
declare class Asphalt extends PilotObject
	ClassName: "Asphalt"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Boiler extends PilotObject
	ClassName: "Boiler"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class SMG extends PilotObject
	ClassName: "SMG"
end
declare class Plasma extends PilotObject
	ClassName: "Plasma"
end
declare class Kiln extends PilotObject
	ClassName: "Kiln"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Copper extends PilotObject
	ClassName: "Copper"
end
declare class CornerWedge extends PilotObject
	ClassName: "CornerWedge"
end
declare class Propeller extends PilotObject
	ClassName: "Propeller"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Bin extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function Configure(self, configuration: BinConfiguration): ()
	Resource: string
	CanBeCraftedFrom: boolean
	function GetResourceAmount(self): (number)
	ClassName: "Bin"
	function GetAmount(self): (number)
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	function GetResource(self): (string | "nil")
end
declare class Refinery extends PilotObject
	ClassName: "Refinery"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class SolarScoop extends PilotObject
	ClassName: "SolarScoop"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Handle extends PilotObject
	TriggerMode: HandleTriggerMode
	ClassName: "Handle"
	function Configure(self, configuration: HandleConfiguration): ()
	Swing: HandleSwingMode
	ToolName: string
end
declare class Door extends PilotObject
	ComponentsUpdated: Event<"ComponentsUpdated", (...any) -> ()>
	ClassName: "Door"
end
declare class Uranium extends PilotObject
	ClassName: "Uranium"
end
declare class DevBattery extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function GetAmount(self): (number)
	ClassName: "DevBattery"
	function GetResourceAmount(self): (number)
	function GetResource(self): (string | "nil")
end
declare class Oil extends PilotObject
	ClassName: "Oil"
end
declare class Transporter extends PilotObject
	function Configure(self, configuration: TransporterConfiguration): ()
	ClassName: "Transporter"
	TransporterID: string
end
declare class Relay extends PilotObject
	LinkerID: number
	Mode: RelayMode
	function Configure(self, configuration: RelayConfiguration): ()
	ClassName: "Relay"
end
declare class FourthOfJuly extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "FourthOfJuly"
end
declare class Button extends PilotObject
	ClassName: "Button"
end
declare class Hologram extends PilotObject
	function Configure(self, configuration: HologramConfiguration): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	UserId: number
	ClassName: "Hologram"
end
declare class Titanium extends PilotObject
	ClassName: "Titanium"
end
declare class Shotgun extends PilotObject
	ClassName: "Shotgun"
end
declare class Egg extends PilotObject
	ClassName: "Egg"
end
declare class Plastic extends PilotObject
	ClassName: "Plastic"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class ConveyorBelt extends PilotObject
	ConveyorBeltSpeed: number
	function Configure(self, configuration: ConveyorBeltConfiguration): ()
	ClassName: "ConveyorBelt"
end
declare class Radiator extends PilotObject
	ClassName: "Radiator"
end
declare class Sign extends PilotObject
	TextFont: string
	function Configure(self, configuration: SignConfiguration): ()
	ClassName: "Sign"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	TextColor: Color3
	SignText: string
end
declare class Cylinder extends PilotObject
	ClassName: "Cylinder"
end
declare class EnergySword extends PilotObject
	ClassName: "EnergySword"
end
declare class WindTurbine extends PilotObject
	ClassName: "WindTurbine"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Gyro extends PilotObject
	function Configure(self, configuration: GyroConfiguration): ()
	DisableWhenUnpowered: boolean
	MaxTorque: number
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	TriggerWhenSeeked: boolean
	ClassName: "Gyro"
	function PointAlong(self, direction: Vector3, up: Vector3?): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function PointAt(self, position: Vector3, up: Vector3?): ()
	Seek: string
end
declare class Flashlight extends PilotObject
	ClassName: "Flashlight"
end
declare class GravityGenerator extends PilotObject
	Gravity: number
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Configure(self, configuration: GravityGeneratorConfiguration): ()
	ClassName: "GravityGenerator"
end
declare class FloatDevice extends PilotObject
	ClassName: "FloatDevice"
end
declare class Hydroponic extends PilotObject
	Grow: string
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Configure(self, configuration: HydroponicConfiguration): ()
	ClassName: "Hydroponic"
end
declare class Framewire extends PilotObject
	ClassName: "Framewire"
end
declare class Goo extends PilotObject
	ClassName: "Goo"
end
declare class Sorter extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Sort(self, amount: number?): ()
	ClassName: "Sorter"
	function Configure(self, configuration: SorterConfiguration): ()
	TriggerQuantity: number
	Rate: number
	Resource: string
end
declare class Blade extends PilotObject
	ComponentsUpdated: Event<"ComponentsUpdated", (...any) -> ()>
	function Configure(self, configuration: BladeConfiguration): ()
	Shape: BladeShape
	ClassName: "Blade"
end
declare class Gun extends PilotObject
	ClassName: "Gun"
end
declare class VintagePlasmaPistol extends PilotObject
	ClassName: "VintagePlasmaPistol"
end
declare class Heater extends PilotObject
	ClassName: "Heater"
end
declare class Hotdog extends PilotObject
	ClassName: "Hotdog"
end
declare class Gold extends PilotObject
	ClassName: "Gold"
end
declare class Microphone extends PilotObject
	Chatted: Event<"Chatted", (player: number, message: string) -> ()>
	ClassName: "Microphone"
end
declare class Aerogel extends PilotObject
	ClassName: "Aerogel"
end
declare class Katana extends PilotObject
	ClassName: "Katana"
end
declare class Lantern extends PilotObject
	ClassName: "Lantern"
end
declare class Beaker extends PilotObject
	ClassName: "Beaker"
end
declare class StorageSensor extends PilotObject
	function Configure(self, configuration: StorageSensorConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	QuantityRange: Range
	ClassName: "StorageSensor"
end
declare class PDWX44 extends PilotObject
	ClassName: "PDW-X44"
end
declare class TouchSensor extends PilotObject
	Touched: Event<"Touched", (object: (number | PilotObject)?) -> ()>
	ClassName: "TouchSensor"
end
declare class PlasmaCannon extends PilotObject
	ClassName: "PlasmaCannon"
end
declare class EnergyShield extends PilotObject
	function Configure(self, configuration: EnergyShieldConfiguration): ()
	function GetShieldHealth(self): (number)
	ShieldStrength: number
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function CalculateCost(self, radius: number?): (number)
	ClassName: "EnergyShield"
	ShieldRadius: number
	Configured: Event<"Configured", (configurerId: number) -> ()>
	RegenerationSpeed: number
	function SetColor(self, color: Color3): ()
end
declare class SmoothReinforcedGlass extends PilotObject
	ClassName: "SmoothReinforcedGlass"
end
declare class Pulverizer extends PilotObject
	ClassName: "Pulverizer"
end
declare class RegionCloaker extends PilotObject
	ClassName: "RegionCloaker"
end
declare class Rice extends PilotObject
	ClassName: "Rice"
end
declare class Hydrogen extends PilotObject
	ClassName: "Hydrogen"
end
declare class EnergyBomb extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "EnergyBomb"
end
declare class SmoothGlass extends PilotObject
	ClassName: "SmoothGlass"
end
declare class Primer extends PilotObject
	ClassName: "Primer"
end
declare class tinnitus extends PilotObject
	ClassName: "tinnitus"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Constructor extends PilotObject
	function CalculateModelRecipe(self, modelCode: string): ({
		[string]: number,
	})
	function Configure(self, configuration: ConstructorConfiguration): ()
	ModelCode: string
	ClassName: "Constructor"
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Configured: Event<"Configured", (configurerId: number) -> ()>
	Autolock: boolean
	RelativeToConstructor: boolean
end
declare class AirSupply extends PilotObject
	ClassName: "AirSupply"
end
declare class Spheroid extends PilotObject
	ClassName: "Spheroid"
end
declare class HeatValve extends PilotObject
	function Configure(self, configuration: HeatValveConfiguration): ()
	ClassName: "HeatValve"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class TriggerWire extends PilotObject
	ClassName: "TriggerWire"
end
declare class Truss extends PilotObject
	ClassName: "Truss"
end
declare class StudAligner extends PilotObject
	ClassName: "StudAligner"
end
declare class Artillery extends PilotObject
	ClassName: "Artillery"
end
declare class Tire extends PilotObject
	ClassName: "Tire"
end
declare class HalfSphere extends PilotObject
	ClassName: "HalfSphere"
end
declare class Rifle extends PilotObject
	ClassName: "Rifle"
end
declare class Anchor extends PilotObject
	Anchored: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: AnchorConfiguration): ()
	ClassName: "Anchor"
end
declare class Flint extends PilotObject
	ClassName: "Flint"
end
declare class Wire extends PilotObject
	ClassName: "Wire"
end
declare class Wing extends PilotObject
	ClassName: "Wing"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class ZapWire extends PilotObject
	ClassName: "ZapWire"
end
declare class RustedMetal extends PilotObject
	ClassName: "RustedMetal"
end
declare class Dispenser extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	Filter: string
	ClassName: "Dispenser"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: DispenserConfiguration): ()
	function Dispense(self): ()
end
declare class Railgun extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "Railgun"
end
declare class AlienCore extends PilotObject
	ClassName: "AlienCore"
end
declare class MustardGas extends PilotObject
	ClassName: "MustardGas"
end
declare class Beryllium extends PilotObject
	ClassName: "Beryllium"
end
declare class ChemicalSynthiser extends PilotObject
	ClassName: "ChemicalSynthiser"
end
declare class Coal extends PilotObject
	ClassName: "Coal"
end
declare class Melter extends PilotObject
	ClassName: "Melter"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class DarkMatter extends PilotObject
	ClassName: "DarkMatter"
end
declare class Freezer extends PilotObject
	ClassName: "Freezer"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Diamond extends PilotObject
	ClassName: "Diamond"
end
declare class CornerRoundWedge extends PilotObject
	ClassName: "CornerRoundWedge"
end
declare class ExoticMatter extends PilotObject
	ClassName: "ExoticMatter"
end
declare class Valve extends PilotObject
	function Configure(self, configuration: ValveConfiguration): ()
	ClassName: "Valve"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class Wedge extends PilotObject
	ClassName: "Wedge"
end
declare class Part100k extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "100k"
end
declare class Glass extends PilotObject
	ClassName: "Glass"
end
declare class ImpulseCannon extends PilotObject
	ClassName: "ImpulseCannon"
end
declare class Seat extends PilotObject
	OccupantChanged: Event<"OccupantChanged", (newOccupant: number?) -> ()>
	function EjectOccupant(self): ()
	function GetOccupant(self): (number?)
	ClassName: "Seat"
end
declare class PlutoniumCore extends PilotObject
	ClassName: "PlutoniumCore"
end
declare class Grass extends PilotObject
	ClassName: "Grass"
end
declare class HeatSink extends PilotObject
	ClassName: "HeatSink"
end
declare class Heatshield extends PilotObject
	ClassName: "Heatshield"
end
declare class Helium extends PilotObject
	ClassName: "Helium"
end
declare class Rubber extends PilotObject
	ClassName: "Rubber"
end
declare class Mandrillium extends PilotObject
	ClassName: "Mandrillium"
end
declare class Lava extends PilotObject
	ClassName: "Lava"
end
declare class DevTeleporter extends PilotObject
	TeleporterID: string
	function Configure(self, configuration: DevTeleporterConfiguration): ()
	ClassName: "DevTeleporter"
end
declare class Jade extends PilotObject
	ClassName: "Jade"
end
declare class Iron extends PilotObject
	ClassName: "Iron"
end
declare class Coupler extends PilotObject
	Couple: Event<"Couple", () -> ()>
	function Configure(self, configuration: CouplerConfiguration): ()
	function IsCoupled(self): (boolean)
	CouplerID: string
	ClassName: "Coupler"
	AutoTrigger: boolean
	Decouple: Event<"Decouple", () -> ()>
	function GetAttachedCoupler(self): (Coupler?)
end
declare class Neutronium extends PilotObject
	ClassName: "Neutronium"
end
declare class Battery extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function GetAmount(self): (number)
	ClassName: "Battery"
	function GetResourceAmount(self): (number)
	function GetResource(self): (string | "nil")
end
declare class NitrogenOxide extends PilotObject
	ClassName: "NitrogenOxide"
end
declare class Turbofan extends PilotObject
	TurboFanSpeed: number
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Configure(self, configuration: TurbofanConfiguration): ()
	ClassName: "Turbofan"
end
declare class Obamium extends PilotObject
	ClassName: "Obamium"
end
declare class TractorBeam extends PilotObject
	PowerPercent: number
	function Configure(self, configuration: TractorBeamConfiguration): ()
	ClassName: "TractorBeam"
end
declare class Perfectium extends PilotObject
	ClassName: "Perfectium"
end
declare class StarMap extends PilotObject
	function GetBodies(self): ({
		[string]: {
			PlanetType: PlanetType,
		},
	})
	function GetSystems(self): ({ string })
	ClassName: "StarMap"
end
declare class Ice extends PilotObject
	ClassName: "Ice"
end
declare class ObjectDetector extends PilotObject
	MaxDistance: number
	ClassName: "ObjectDetector"
	TriggerAtDistance: Vector2
	function Configure(self, configuration: ObjectDetectorConfiguration): ()
	function GetLastHitPart(self): (PilotObject)
	function GetLastHitData(self): (ObjectDetectorHitData)
end
declare class Generator extends PilotObject
	ClassName: "Generator"
end
declare class Explosive extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "Explosive"
end
declare class Router extends PilotObject
	RouterID: string
	function Configure(self, configuration: RouterConfiguration): ()
	ClassName: "Router"
end
declare class CrossBow extends PilotObject
	ClassName: "CrossBow"
end
declare class Ruby extends PilotObject
	ClassName: "Ruby"
end
declare class Sand extends PilotObject
	ClassName: "Sand"
end
declare class Claymore extends PilotObject
	ClassName: "Claymore"
end
declare class Petroleum extends PilotObject
	ClassName: "Petroleum"
end
declare class BallastTank extends PilotObject
	ClassName: "BallastTank"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Configure(self, configuration: BallastTankConfiguration): ()
	Buoyancy: number
end
declare class Snow extends PilotObject
	ClassName: "Snow"
end
declare class Stanlium extends PilotObject
	ClassName: "Stanlium"
end
declare class IonRocket extends PilotObject
	ClassName: "IonRocket"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: IonRocketConfiguration): ()
	Propulsion: number
end
declare class Steam extends PilotObject
	ClassName: "Steam"
end
declare class TintedGlass extends PilotObject
	ClassName: "TintedGlass"
end
declare class Stone extends PilotObject
	ClassName: "Stone"
end
declare class Sulfur extends PilotObject
	ClassName: "Sulfur"
end
declare class MiningLaser extends PilotObject
	function Configure(self, configuration: MiningLaserConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	MaterialToExtract: string
	ClassName: "MiningLaser"
end
declare class Chute extends PilotObject
	ClassName: "Chute"
end
declare class RepairPlate extends PilotObject
	ClassName: "RepairPlate"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class AdminTool extends PilotObject
	ClassName: "AdminTool"
end
declare class FireWood extends PilotObject
	ClassName: "FireWood"
end
declare class Radar extends PilotObject
	ClassName: "Radar"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class ImpactPlate extends PilotObject
	ClassName: "ImpactPlate"
end
declare class Engine extends PilotObject
	function Configure(self, configuration: EngineConfiguration): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	EngineSpeed: number
	ClassName: "Engine"
end
declare class StanSword extends PilotObject
	ClassName: "StanSword"
end
declare class TemperatureSensor extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function GetTemp(self): (number)
	ClassName: "TemperatureSensor"
	function Configure(self, configuration: TemperatureSensorConfiguration): ()
	TemperatureRange: Range
end
declare class Modem extends PilotObject
	function GetAsync(self, url: string, nocache: boolean?, headers: {
		[string]: any,
	}?): (string)
	function Configure(self, configuration: ModemConfiguration): ()
	function PostAsync(self, url: string, data: string, contentType: Enum.HttpContentType?, compress: boolean?, headers: {
		[string]: any,
	}?): (string)
	function SendLocalMessage(self, data: any, id: string?): ()
	function PostRequest(self, domain: string, data: string): ()
	function UrlEncode(self, input: string): (string)
	function GetRequest(self, domain: string): (string)
	function RealPostRequest(self, domain: string, data: string, asyncBool: boolean, transformFunction: (...any) -> (), optionalHeaders: {
		[string]: any,
	}?): ({
		success: boolean,
		response: string,
	})
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "Modem"
	NetworkID: string
	function SendMessage(self, data: JSON, id: string?): ()
	function RequestAsync(self, options: ModemRequest): (ModemRequestResponse)
	MessageSent: Event<"MessageSent", (data: any) -> ()>
end
declare class SubspaceTripmine extends PilotObject
	ClassName: "SubspaceTripmine"
end
declare class Gasoline extends PilotObject
	ClassName: "Gasoline"
end
declare class Camera extends PilotObject
	VideoID: number
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: CameraConfiguration): ()
	ClassName: "Camera"
end
declare class HeatCell extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function GetAmount(self): (number)
	ClassName: "HeatCell"
	function GetResourceAmount(self): (number)
	function GetResource(self): (string | "nil")
end
declare class GeigerCounter extends PilotObject
	ClassName: "GeigerCounter"
end
declare class CombustionTurbine extends PilotObject
	ClassName: "CombustionTurbine"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Billboardium extends PilotObject
	ClassName: "Billboardium"
end
declare class Thruster extends PilotObject
	ClassName: "Thruster"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: ThrusterConfiguration): ()
	Propulsion: number
end
declare class NightVisionGoggles extends PilotObject
	ClassName: "NightVisionGoggles"
end
declare class Faucet extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	Filter: string
	ClassName: "Faucet"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: FaucetConfiguration): ()
	function Dispense(self): ()
end
declare class AutomaticLaser extends PilotObject
	ClassName: "AutomaticLaser"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class EthernetCable extends PilotObject
	ClassName: "EthernetCable"
end
declare class Pipe extends PilotObject
	ClassName: "Pipe"
end
declare class Tetrahedron extends PilotObject
	ClassName: "Tetrahedron"
end
declare class CornerRoundWedge2 extends PilotObject
	ClassName: "CornerRoundWedge2"
end
declare class DevSource extends PilotObject
	function Configure(self, configuration: DevSourceConfiguration): ()
	function GetAmountGenerated(self, ...: any): (...any)
	ClassName: "DevSource"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	Resource: ResourceString
end
declare class Cannon extends PilotObject
	ClassName: "Cannon"
end
declare class Furnace extends PilotObject
	ClassName: "Furnace"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Gear extends PilotObject
	ClassName: "Gear"
end
declare class CornerTetra extends PilotObject
	ClassName: "CornerTetra"
end
declare class Scanner extends PilotObject
	function CalculateCost(self, range: number?): (number)
	function Locate(self, part: PilotObject, scanners: { Scanner }): (Vector3)
	function GetPartsInRange(self, range: number?, className: string?): ({ PilotObject })
	ClassName: "Scanner"
	function GetDistance(self, part: PilotObject): (number)
	Range: number
	function Configure(self, configuration: ScannerConfiguration): ()
end
declare class Polysilicon extends PilotObject
	function Configure(self, configuration: PolysiliconConfiguration): ()
	ClassName: "Polysilicon"
	PolysiliconMode: PolysiliconMode
	Configured: Event<"Configured", (configurerId: number) -> ()>
	Frequency: number
end
declare class RepairLaser extends PilotObject
	ClassName: "RepairLaser"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Rail extends PilotObject
	function SetPosition(self, depth: number): ()
	function Configure(self, configuration: RailConfiguration): ()
	ClassName: "Rail"
	Position1: number
	TweenTime: number
	Position2: number
end
declare class Sail extends PilotObject
	ClassName: "Sail"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Extinguisher extends PilotObject
	ClassName: "Extinguisher"
end
declare class DarkReactor extends PilotObject
	ClassName: "DarkReactor"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class BeamRifle extends PilotObject
	ClassName: "BeamRifle"
end
declare class VitalScanner extends PilotObject
	ClassName: "VitalScanner"
end
declare class Balloon extends PilotObject
	ClassName: "Balloon"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: BalloonConfiguration): ()
	Buoyancy: number
end
declare class Light extends PilotObject
	Shadows: boolean
	function Configure(self, configuration: LightConfiguration): ()
	ClassName: "Light"
	Brightness: number
	Configured: Event<"Configured", (configurerId: number) -> ()>
	LightRange: number
	function SetColor(self, color: Color3): ()
end
declare class Flamethrower extends PilotObject
	ClassName: "Flamethrower"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class RemoteControl extends PilotObject
	ClassName: "RemoteControl"
	function Configure(self, configuration: RemoteControlConfiguration): ()
	RemoteControlMode: RemoteControlMode
	RemoteControlRange: number
end
declare class TemperatureGate extends PilotObject
	function Configure(self, configuration: TemperatureGateConfiguration): ()
	Inverted: boolean
	function GetState(self): ()
	ClassName: "TemperatureGate"
	function GetTemp(self): (number)
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	TemperatureRange: Range
	function GetTemperature(self): (number)
end
declare class Scrapper extends PilotObject
	ClassName: "Scrapper"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Rocket extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "Rocket"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: RocketConfiguration): ()
	Propulsion: number
end
declare class SpawnPoint extends PilotObject
	ClassName: "SpawnPoint"
end
declare class Electromagnet extends PilotObject
	ClassName: "Electromagnet"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class DeleteSwitch extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	ClassName: "DeleteSwitch"
end
declare class FactionSpawn extends PilotObject
	ClassName: "FactionSpawn"
end
declare class Igniter extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	ClassName: "Igniter"
end
declare class RepairKit extends PilotObject
	ClassName: "RepairKit"
end
declare class Boombox extends PilotObject
	function Configure(self, configuration: BoomboxConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	Audio: number
	ClassName: "Boombox"
end
declare class SolarPanel extends PilotObject
	ClassName: "SolarPanel"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class TriggerSwitch extends PilotObject
	function Configure(self, configuration: TriggerSwitchConfiguration): ()
	ClassName: "TriggerSwitch"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class Tile extends PilotObject
	ClassName: "Tile"
end
declare class HyperDrive extends PilotObject
	function GetRequiredPower(self): ()
	Coordinates: Coordinates
	ClassName: "HyperDrive"
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: HyperDriveConfiguration): ()
end
declare class DevSink extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function Configure(self, configuration: DevSinkConfiguration): ()
	function GetAmount(self): (number)
	function GetResourceAmount(self): (number)
	Resource: ResourceString
	ClassName: "DevSink"
	function GetAmountConsumed(self, ...: any): (...any)
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	function GetResource(self): (string | "nil")
end
declare class Solenoid extends PilotObject
	function Configure(self, configuration: SolenoidConfiguration): ()
	PowerRange: Range
	Inverted: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "Solenoid"
end
declare class Decoupler extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	ClassName: "Decoupler"
end
declare class RoundWedge2 extends PilotObject
	ClassName: "RoundWedge2"
end
declare class Prosthetic extends PilotObject
	Limb: PlayerLimb
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: ProstheticConfiguration): ()
	ClassName: "Prosthetic"
end
declare class Reactor extends PilotObject
	ClassName: "Reactor"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function GetFuel(self): ({ number })
	function GetTemp(self): (number)
	function GetEfficiency(self): (number)
	function Configure(self, configuration: ReactorConfiguration): ()
	TriggerWhenEmpty: boolean
	Alarm: boolean
end
declare class BlackBox extends PilotObject
	function GetLogs(self): ({ RegionLog })
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "BlackBox"
end
declare class Telescope extends PilotObject
	function WhenRegionLoads(self, callback: (regionInfo: CompleteRegionInfo) -> ()): ()
	function Configure(self, configuration: TelescopeConfiguration): ()
	function GetCurrentCoordinate(self): (Coordinates)
	ClassName: "Telescope"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function GetCoordinate(self): (RegionInfo)
	ViewCoordinates: Coordinates
end
declare class Aluminum extends PilotObject
	ClassName: "Aluminum"
end
declare class Motor extends PilotObject
	function Configure(self, configuration: MotorConfiguration): ()
	Power: number
	Ratio: number
	ClassName: "Motor"
	Configured: Event<"Configured", (configurerId: number) -> ()>
end
declare class Obelisk extends PilotObject
	ClassName: "Obelisk"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Controller extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "Controller"
end
declare class Rotor extends PilotObject
	ClassName: "Rotor"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class RTG extends PilotObject
	ClassName: "RTG"
end
declare class Insulation extends PilotObject
	ClassName: "Insulation"
end
declare class Winch extends PilotObject
	function Configure(self, configuration: WinchConfiguration): ()
	ClassName: "Winch"
	function AdjustLength(self, adjustment: number): ()
	DeltaLength: number
	function SetLength(self, length: number): ()
	MaxLength: number
	MinLength: number
end
declare class RoundWedge extends PilotObject
	ClassName: "RoundWedge"
end
declare class VehicleSeat extends PilotObject
	Enabled: boolean
	function Configure(self, configuration: VehicleSeatConfiguration): ()
	OccupantChanged: Event<"OccupantChanged", (newOccupant: number?) -> ()>
	function GetOccupant(self): (number?)
	ClassName: "VehicleSeat"
	function EjectOccupant(self): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	Mode: VehicleSeatMode
	Speed: number
end
declare class Hull extends PilotObject
	ComponentsUpdated: Event<"ComponentsUpdated", (...any) -> ()>
	ClassName: "Hull"
end
declare class SoundMuffler extends PilotObject
	ClassName: "SoundMuffler"
end
declare class Magnesium extends PilotObject
	ClassName: "Magnesium"
end
declare class Cloth extends PilotObject
	ClassName: "Cloth"
end
declare class Speaker extends PilotObject
	Pitch: number
	function ClearSounds(self): ()
	Audio: string
	function LoadSound(self, soundId: string): (Sound)
	function Chat(self, message: string): ()
	ClassName: "Speaker"
	Volume: number
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: SpeakerConfiguration): ()
	function PlaySound(self, soundId: string?): ()
end
declare class HeatPump extends PilotObject
	function Configure(self, configuration: HeatPumpConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	TransferRate: number
	ClassName: "HeatPump"
end
declare class Plutonium extends PilotObject
	ClassName: "Plutonium"
end
declare class Microcontroller extends PilotObject
	function Receive(self): (Microcontroller, ...any)
	function Configure(self, configuration: MicrocontrollerConfiguration): ()
	Code: string
	StartOnSpawn: boolean
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Shutdown(self): ()
	ClassName: "Microcontroller"
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	function Send(self, ...: any): ()
end
declare class SteamEngine extends PilotObject
	function Configure(self, configuration: SteamEngineConfiguration): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	EngineSpeed: number
	ClassName: "SteamEngine"
end
declare class Quartz extends PilotObject
	ClassName: "Quartz"
end
declare class CrudeWing extends PilotObject
	ClassName: "CrudeWing"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Marble extends PilotObject
	ClassName: "Marble"
end
declare class Treads extends PilotObject
	ClassName: "Treads"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Piston extends PilotObject
	function SetPosition(self): ()
	function Configure(self, configuration: PistonConfiguration): ()
	ClassName: "Piston"
	Speed: number
	Configured: Event<"Configured", (configurerId: number) -> ()>
	Position1: number
	Position2: number
end
declare class Transistor extends PilotObject
	function Configure(self, configuration: TransistorConfiguration): ()
	Inverted: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "Transistor"
end
declare class PowerCell extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function GetAmount(self): (number)
	ClassName: "PowerCell"
	function GetResourceAmount(self): (number)
	function GetResource(self): (string | "nil")
end
declare class TriggerRelay extends PilotObject
	function Configure(self, configuration: TriggerRelayConfiguration): ()
	ClassName: "TriggerRelay"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class FactionHub extends PilotObject
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "FactionHub"
end
declare class Pistol extends PilotObject
	ClassName: "Pistol"
end
declare class Cleat extends PilotObject
	ClassName: "Cleat"
end
declare class Fireworks extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "Fireworks"
end
declare class Transformer extends PilotObject
	function Configure(self, configuration: TransformerConfiguration): ()
	ClassName: "Transformer"
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	LoopTime: number
end
declare class AdBoard extends PilotObject
	ClassName: "AdBoard"
end
declare class Warhead extends PilotObject
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	Damaged: Event<"Damaged", (damage: number, damageType: "Kinetic" | "Energy", damageSource: PilotObject?) -> ()>
	ClassName: "Warhead"
end
declare class Brick extends PilotObject
	ClassName: "Brick"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Component extends PilotObject
	ComponentsUpdated: Event<"ComponentsUpdated", (...any) -> ()>
	ClassName: "Component"
end
declare class SteamTurbine extends PilotObject
	function GetEfficiency(self): (number)
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function GetProductionRate(self): (number)
	ClassName: "SteamTurbine"
end
declare class LifeSensor extends PilotObject
	ClassName: "LifeSensor"
	function GetReading(self): ({
		[string]: Vector3,
	})
	function ListPlayers(self): ({ number })
	function GetPlayers(self): ({
		[number]: CFrame,
	})
end
declare class LightTube extends PilotObject
	ClassName: "LightTube"
	function SetColor(self, color: Color3): ()
end
declare class Disk extends PilotObject
	function Clear(self): ()
	function Write(self, key: any, value: any): ()
	function Compress(self): ()
	function ReadAll(self): ({
		[any]: any,
	})
	function WriteAll(self, content: {
		[any]: any,
	}): ()
	function Read(self, key: any): (any)
	function Decompress(self): ()
	ClassName: "Disk"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function ReadEntireDisk(self): ({
		[any]: any,
	})
	function ClearDisk(self): ()
end
declare class DarkConverter extends PilotObject
	ClassName: "DarkConverter"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class WirelessButton extends PilotObject
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "WirelessButton"
end
declare class Block extends PilotObject
	ClassName: "Block"
end
declare class ProximityButton extends PilotObject
	PromptTriggered: Event<"PromptTriggered", () -> ()>
	GamepadKeyCode: string
	HoldDuration: number
	MaxActivationDistance: number
	ObjectText: string
	PromptButtonHoldBegan: Event<"PromptButtonHoldBegan", () -> ()>
	PromptButtonHoldEnded: Event<"PromptButtonHoldEnded", () -> ()>
	function Configure(self, configuration: ProximityButtonConfiguration): ()
	ClassName: "ProximityButton"
	KeyboardKeyCode: string
	Configured: Event<"Configured", (configurerId: number) -> ()>
	PromptTriggerEnded: Event<"PromptTriggerEnded", () -> ()>
	RequiresLineOfSight: boolean
end
declare class Ball extends PilotObject
	ClassName: "Ball"
end
declare class LightBridge extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "LightBridge"
	BeamColor: Color3
	function Configure(self, configuration: LightBridgeConfiguration): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
end
declare class EnergyGun extends PilotObject
	ClassName: "EnergyGun"
end
declare class StasisField extends PilotObject
	ClassName: "StasisField"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Cement extends PilotObject
	ClassName: "Cement"
end
declare class Keyboard extends PilotObject
	TextInputted: Event<"TextInputted", (text: string, player: string) -> ()>
	ClassName: "Keyboard"
	UserInput: Event<"UserInput", (inputObject: UserInputObject, userId: number) -> ()>
	function SimulateUserInput(self): ()
	function SimulateKeyPress(self, key: string?, player: string): ()
	function SimulateTextInput(self, input: string?, player: string): ()
	KeyPressed: Event<"KeyPressed", (key: Enum.KeyCode, keyName: string, userId: number) -> ()>
end
declare class Neon extends PilotObject
	ClassName: "Neon"
end
declare class Diode extends PilotObject
	ClassName: "Diode"
end
declare class Assembler extends PilotObject
	function CalculateCraftingRecipe(self, items: { string } | {
		[string]: number,
	}): ({
		[string]: number,
		Power: number,
	})
	function Configure(self, configuration: AssemblerConfiguration): ()
	function CraftItems(self, items: { string } | {
		[string]: number,
	}): ()
	function Craft(self, itemName: string): (boolean)
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function GetRecipe(self, itemName: string): ({
		[string]: number,
	})
	Configured: Event<"Configured", (configurerId: number) -> ()>
	ClassName: "Assembler"
	Assemble: string
end
declare class Torch extends PilotObject
	ClassName: "Torch"
end
declare class Pump extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "Pump"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: PumpConfiguration): ()
	LiquidToPump: string
end
declare class ElectricFence extends PilotObject
	ClassName: "ElectricFence"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class TimeSensor extends PilotObject
	function Configure(self, configuration: TimeSensorConfiguration): ()
	Time: string
	ClassName: "TimeSensor"
end
declare class MonsterMashPotion extends PilotObject
	ClassName: "MonsterMashPotion"
end
declare class ScubaMask extends PilotObject
	ClassName: "ScubaMask"
end
declare class FluidProjector extends PilotObject
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	ClassName: "FluidProjector"
	Fluid: string
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: FluidProjectorConfiguration): ()
	Size: Vector3
end
declare class DriveBox extends PilotObject
	function Configure(self, configuration: DriveBoxConfiguration): ()
	ClassName: "DriveBox"
	Reversal: boolean
	Ratio: number
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Servo extends PilotObject
	function SetAngle(self, angle: number): ()
	function Configure(self, configuration: ServoConfiguration): ()
	ServoSpeed: number
	ClassName: "Servo"
	Responsiveness: number
	Angle: number
	Configured: Event<"Configured", (configurerId: number) -> ()>
	AngleStep: number
end
declare class Fence extends PilotObject
	ClassName: "Fence"
end
declare class DevGravityGenerator extends PilotObject
	Enabled: boolean
	Radius: number
	ClassName: "DevGravityGenerator"
	Gravity: number
	function Configure(self, configuration: DevGravityGeneratorConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class TestStarMap extends PilotObject
	ClassName: "TestStarMap"
end
declare class BurnerGenerator extends PilotObject
	ClassName: "BurnerGenerator"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class ReinforcedGlass extends PilotObject
	ClassName: "ReinforcedGlass"
end
declare class Cone extends PilotObject
	ClassName: "Cone"
end
declare class WaterCooler extends PilotObject
	ClassName: "WaterCooler"
end
declare class DevHeatStorage extends PilotObject
	ContainerChanged: Event<"ContainerChanged", (resourceType: "Power" | "Solid" | "Fluid", resourceAmount: number) -> ()>
	function GetAmount(self): (number)
	ClassName: "DevHeatStorage"
	function GetResourceAmount(self): (number)
	function GetResource(self): (string | "nil")
end
declare class Laser extends PilotObject
	ClassName: "Laser"
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	function Configure(self, configuration: LaserConfiguration): ()
	DamageOnlyPlayers: boolean
end
declare class Stick extends PilotObject
	ClassName: "Stick"
end
declare class Water extends PilotObject
	ClassName: "Water"
end
declare class Teleporter extends PilotObject
	TeleporterID: number
	ForceLocalTeleport: boolean
	Triggered: Event<"Triggered", (otherPart: PilotObject) -> ()>
	ClassName: "Teleporter"
	function Configure(self, configuration: TeleporterConfiguration): ()
	Coordinates: Coordinates
end
declare class ARController extends PilotObject
	function ClearElements(self, context: CanvasContext): ()
	function CreateElement3D(self, shape: "Ball" | "Block" | "Cylinder" | "Wedge" | "CornerWedge", properties: {
		[string]: any,
	}): (Part)
	function CreateElement(self, className: string, properties: {
		[string]: any,
	}, context: CanvasContext): (Instance)
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	CursorReleased: Event<"CursorReleased", (cursor: ARCursor) -> ()>
	function Configure(self, configuration: ARControllerConfiguration): ()
	CursorMoved: Event<"CursorMoved", (cursor: ARCursor) -> ()>
	function GetCursor(self): (ARCursor)
	KeyPressed: Event<"KeyPressed", (key: Enum.KeyCode, keyName: string, userId: number) -> ()>
	GetCanvas: ((self: ARController, context: "2D"?) -> (Folder)) & ((self: ARController, context: "3D") -> (WorldModel))
	Transparency: number
	function GetCursors(self): ({
		[number]: ARCursor,
	})
	function ClearElements3D(self): ()
	ClassName: "ARController"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	UserInput: Event<"UserInput", (inputObject: UserInputObject, userId: number) -> ()>
	CursorPressed: Event<"CursorPressed", (cursor: ARCursor) -> ()>
end
declare class ARGlasses extends ARController
	ClassName: "ARGlasses"
end
declare class Instrument extends PilotObject
	Type: InstrumentType
	ClassName: "Instrument"
	function GetReading(self, type: (InstrumentType | number)?): (number | Vector3 | string)
	function Configure(self, configuration: InstrumentConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
end
declare class Antenna extends PilotObject
	AntennaID: string
	function Configure(self, configuration: AntennaConfiguration): ()
	ClassName: "Antenna"
end
declare class Filter extends PilotObject
	ClassName: "Filter"
	function Configure(self, configuration: FilterConfiguration): ()
	Invert: boolean
	Filter: string
end
declare class HeatPipe extends PilotObject
	ClassName: "HeatPipe"
end
declare class BlastingCap extends PilotObject
	ClassName: "BlastingCap"
end
declare class Lead extends PilotObject
	ClassName: "Lead"
end
declare class Food extends PilotObject
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	ClassName: "Food"
end
declare class CloningBay extends PilotObject
	function Configure(self, configuration: CloningBayConfiguration): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	Name: string
	ClassName: "CloningBay"
end
declare class Cooler extends PilotObject
	ClassName: "Cooler"
end
declare class Apparel extends PilotObject
	Transparency: number
	ClassName: "Apparel"
	Limb: PlayerLimb
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
	function Configure(self, configuration: ApparelConfiguration): ()
end
declare class BurstLaser extends PilotObject
	ClassName: "BurstLaser"
end
declare class DevGenerator extends PilotObject
	ClassName: "DevGenerator"
end
declare class Extractor extends PilotObject
	function Configure(self, configuration: ExtractorConfiguration): ()
	Loop: Event<"Loop", (tickInterval: number) -> ()>
	MaterialToExtract: string
	ClassName: "Extractor"
end
declare class Screen extends PilotObject
	function GetCanvas(self): (Frame)
	VideoID: number
	function CreateElement(self, className: string, properties: {
		[string]: any,
	}): (Instance)
	ClassName: "Screen"
	function ClearElements(self): ()
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function Configure(self, configuration: ScreenConfiguration): ()
	function GetDimensions(self): (Vector2)
end
declare class TouchScreen extends Screen
	CursorReleased: Event<"CursorReleased", (Cursor: Cursor) -> ()>
	CursorMoved: Event<"CursorMoved", (Cursor: Cursor) -> ()>
	function GetCursor(self, username: string): (Cursor)
	ClassName: "TouchScreen"
	Configured: Event<"Configured", (configurerId: number) -> ()>
	function GetCursors(self): ({
		[string]: Cursor,
	})
	CursorPressed: Event<"CursorPressed", (Cursor: Cursor) -> ()>
end
declare class Hatch extends PilotObject
	function Configure(self, configuration: HatchConfiguration): ()
	ClassName: "Hatch"
	SwitchValue: boolean
	Configured: Event<"Configured", (configurerId: number) -> ()>
	OnClick: Event<"OnClick", (clickerId: number) -> ()>
end
declare class DelayWire extends PilotObject
	function Configure(self, configuration: DelayWireConfiguration): ()
	ClassName: "DelayWire"
	DelayTime: number
end
declare class Wood extends PilotObject
	ClassName: "Wood"
end
export type HyperspaceRadarConfiguration = {
	[string]: any,
	ViewCoordinates: Coordinates?,
}
export type HeatPumpConfiguration = {
	[string]: any,
	TransferRate: number?,
}
export type TriggerRelayConfiguration = {
	[string]: any,
	SwitchValue: boolean?,
}
export type LightConfiguration = {
	Shadows: boolean?,
	[string]: any,
	LightRange: number?,
	Brightness: number?,
}
export type PortConfiguration = {
	PortID: number?,
	[string]: any,
}
export type SolenoidConfiguration = {
	[string]: any,
	PowerRange: Range?,
	Inverted: boolean?,
}
export type BallastTankConfiguration = {
	Buoyancy: number?,
	[string]: any,
}
export type ValveConfiguration = {
	[string]: any,
	SwitchValue: boolean?,
}
export type TemperatureGateConfiguration = {
	SwitchValue: boolean?,
	TemperatureRange: Range?,
	[string]: any,
	Inverted: boolean?,
}
export type HandleConfiguration = {
	ToolName: string?,
	Swing: HandleSwingMode?,
	TriggerMode: HandleTriggerMode?,
	[string]: any,
}
export type ExtractorConfiguration = {
	MaterialToExtract: string?,
	[string]: any,
}
export type MotorConfiguration = {
	[string]: any,
	Ratio: number?,
	Power: number?,
}
export type TriggerSwitchConfiguration = {
	[string]: any,
	SwitchValue: boolean?,
}
export type DevTeleporterConfiguration = {
	[string]: any,
	TeleporterID: string?,
}
export type PumpConfiguration = {
	[string]: any,
	LiquidToPump: string?,
}
export type PolysiliconConfiguration = {
	PolysiliconMode: PolysiliconMode?,
	[string]: any,
	Frequency: number?,
}
export type ObjectDetectorConfiguration = {
	TriggerAtDistance: Vector2?,
	[string]: any,
	MaxDistance: number?,
}
export type DevSourceConfiguration = {
	Resource: ResourceString?,
	[string]: any,
}
export type DevSinkConfiguration = {
	Resource: ResourceString?,
	[string]: any,
}
export type CameraConfiguration = {
	VideoID: number?,
	[string]: any,
}
export type BalloonConfiguration = {
	[string]: any,
	Buoyancy: number?,
}
export type ThrusterConfiguration = {
	Propulsion: number?,
	[string]: any,
}
export type TransformerConfiguration = {
	[string]: any,
	LoopTime: number?,
}
export type BinConfiguration = {
	[string]: any,
	Resource: string?,
	CanBeCraftedFrom: boolean?,
}
export type LightBridgeConfiguration = {
	BeamColor: Color3?,
	[string]: any,
}
export type FaucetConfiguration = {
	[string]: any,
	Filter: string?,
}
export type TransistorConfiguration = {
	Inverted: boolean?,
	[string]: any,
}
export type CloningBayConfiguration = {
	[string]: any,
	Name: string?,
}
export type TeleporterConfiguration = {
	[string]: any,
	Coordinates: Coordinates?,
	TeleporterID: number?,
	ForceLocalTeleport: boolean?,
}
export type TelescopeConfiguration = {
	[string]: any,
	ViewCoordinates: Coordinates?,
}
export type ProstheticConfiguration = {
	Limb: PlayerLimb?,
	[string]: any,
}
export type HydroponicConfiguration = {
	Grow: string?,
	[string]: any,
}
export type ServoConfiguration = {
	ServoSpeed: number?,
	[string]: any,
	Responsiveness: number?,
	Angle: number?,
	AngleStep: number?,
}
export type TurbofanConfiguration = {
	TurboFanSpeed: number?,
	[string]: any,
}
export type VehicleSeatConfiguration = {
	Speed: number?,
	Mode: VehicleSeatMode?,
	[string]: any,
	Enabled: boolean?,
}
export type ConveyorBeltConfiguration = {
	ConveyorBeltSpeed: number?,
	[string]: any,
}
export type EnergyShieldConfiguration = {
	ShieldRadius: number?,
	ShieldStrength: number?,
	RegenerationSpeed: number?,
	[string]: any,
}
export type CouplerConfiguration = {
	[string]: any,
	CouplerID: string?,
	AutoTrigger: boolean?,
}
export type InstrumentConfiguration = {
	Type: InstrumentType?,
	[string]: any,
}
export type FilterConfiguration = {
	[string]: any,
	Invert: boolean?,
	Filter: string?,
}
export type ModemConfiguration = {
	[string]: any,
	NetworkID: string?,
}
export type HyperDriveConfiguration = {
	Coordinates: Coordinates?,
	[string]: any,
}
export type FluidProjectorConfiguration = {
	Fluid: string?,
	[string]: any,
	Size: Vector3?,
}
export type TemperatureSensorConfiguration = {
	TemperatureRange: Range?,
	[string]: any,
}
export type TankConfiguration = {
	CanBeCraftedFrom: boolean?,
	Resource: string?,
	[string]: any,
}
export type ConstructorConfiguration = {
	[string]: any,
	ModelCode: string?,
	Autolock: boolean?,
	RelativeToConstructor: boolean?,
}
export type WinchConfiguration = {
	DeltaLength: number?,
	MinLength: number?,
	[string]: any,
	MaxLength: number?,
}
export type TransporterConfiguration = {
	[string]: any,
	TransporterID: string?,
}
export type GravityGeneratorConfiguration = {
	[string]: any,
	Gravity: number?,
}
export type RelayConfiguration = {
	[string]: any,
	Mode: RelayMode?,
	LinkerID: number?,
}
export type HologramConfiguration = {
	UserId: number?,
	[string]: any,
}
export type SignConfiguration = {
	TextFont: string?,
	[string]: any,
	SignText: string?,
	TextColor: Color3?,
}
export type PistonConfiguration = {
	Position1: number?,
	Speed: number?,
	[string]: any,
	Position2: number?,
}
export type ReactorConfiguration = {
	Alarm: boolean?,
	[string]: any,
	TriggerWhenEmpty: boolean?,
}
export type ProximityButtonConfiguration = {
	KeyboardKeyCode: string?,
	GamepadKeyCode: string?,
	HoldDuration: number?,
	[string]: any,
	ObjectText: string?,
	RequiresLineOfSight: boolean?,
	MaxActivationDistance: number?,
}
export type GyroConfiguration = {
	DisableWhenUnpowered: boolean?,
	[string]: any,
	Seek: string?,
	MaxTorque: number?,
	TriggerWhenSeeked: boolean?,
}
export type AssemblerConfiguration = {
	Assemble: string?,
	[string]: any,
}
export type RemoteControlConfiguration = {
	[string]: any,
	RemoteControlRange: number?,
	RemoteControlMode: RemoteControlMode?,
}
export type SteamEngineConfiguration = {
	[string]: any,
	EngineSpeed: number?,
}
export type StorageSensorConfiguration = {
	QuantityRange: Range?,
	[string]: any,
}
export type HeatValveConfiguration = {
	[string]: any,
	SwitchValue: boolean?,
}
export type EngineConfiguration = {
	EngineSpeed: number?,
	[string]: any,
}
export type HatchConfiguration = {
	[string]: any,
	SwitchValue: boolean?,
}
export type DispenserConfiguration = {
	[string]: any,
	Filter: string?,
}
export type TractorBeamConfiguration = {
	[string]: any,
	PowerPercent: number?,
}
export type RouterConfiguration = {
	RouterID: string?,
	[string]: any,
}
export type ARControllerConfiguration = {
	[string]: any,
	Transparency: number?,
}
export type IonRocketConfiguration = {
	[string]: any,
	Propulsion: number?,
}
export type MicrocontrollerConfiguration = {
	StartOnSpawn: boolean?,
	[string]: any,
	Code: string?,
}
export type ScreenConfiguration = {
	[string]: any,
	VideoID: number?,
}
export type AnchorConfiguration = {
	Anchored: boolean?,
	[string]: any,
}
export type SwitchConfiguration = {
	SwitchValue: boolean?,
	[string]: any,
}
export type DevGravityGeneratorConfiguration = {
	Enabled: boolean?,
	Gravity: number?,
	Radius: number?,
	[string]: any,
}
export type BoomboxConfiguration = {
	[string]: any,
	Audio: number?,
}
export type DelayWireConfiguration = {
	DelayTime: number?,
	[string]: any,
}
export type DriveBoxConfiguration = {
	Reversal: boolean?,
	[string]: any,
	Ratio: number?,
}
export type BladeConfiguration = {
	[string]: any,
	Shape: BladeShape?,
}
export type BeaconConfiguration = {
	ShowOnMap: boolean?,
	[string]: any,
	BeaconName: string?,
}
export type AntennaConfiguration = {
	AntennaID: string?,
	[string]: any,
}
export type TimeSensorConfiguration = {
	Time: string?,
	[string]: any,
}
export type SpeakerConfiguration = {
	Pitch: number?,
	[string]: any,
	Audio: string?,
	Volume: number?,
}
export type RocketConfiguration = {
	Propulsion: number?,
	[string]: any,
}
export type ApparelConfiguration = {
	Limb: PlayerLimb?,
	Transparency: number?,
	[string]: any,
}
export type MiningLaserConfiguration = {
	[string]: any,
	MaterialToExtract: string?,
}
export type SorterConfiguration = {
	Rate: number?,
	Resource: string?,
	TriggerQuantity: number?,
	[string]: any,
}
export type RailConfiguration = {
	Position1: number?,
	Position2: number?,
	[string]: any,
	TweenTime: number?,
}
export type ScannerConfiguration = {
	Range: number?,
	[string]: any,
}
export type LaserConfiguration = {
	[string]: any,
	DamageOnlyPlayers: boolean?,
}
