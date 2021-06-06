# Entity 0x4b
Entity 0x4b is a multi purpose entity that can be used to change the nametable when collided or punched, or increment a counter when collided.

## Kinds
There are 3 kinds of behavior. It is defined by the entity data byte:
- **Punch kind: data 0**  
Request nametable change when punched
- **Increment kind: data 1**  
Collision Increment _RAM_C07F_ kind
- **Collision kind: data 2 or greater**  
Request nametable change on collision

## Usage
It is present on the following levels:
- Bonus level (Punch kind)
- Mt. Kave (Collision kind)
- Radactian Castle (Increment kind)
- Jankens Castle (Increment and Collision kinds)
