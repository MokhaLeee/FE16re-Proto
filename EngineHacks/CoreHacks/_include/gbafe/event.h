#ifndef GBAFE_EVENT_H
#define GBAFE_EVENT_H

extern unsigned gEventSlot[];
extern unsigned gEventQueue[];

extern unsigned gEventCounter;

void SetEventCounter(unsigned); //! FE8U = 0x800D589
unsigned GetEventCounter(void); //! FE8U = 0x800D595




// Mokha
u8 GetBattleMapType(void); // 0x80BD069
struct ROMChapterData* GetChapterEventDataPointer(u8);
u8 GetLocationEventCommandAt(s8 x, s8 y); // 0x8084079
u32* CheckEventDefinition(u32*);
void RunLocationEvents(s8 x, s8 y); // 0x80840C5
void CallMapEventEngine(u32*,u8); // 0x800D07D
void CallEventDefinition(u32*,u8); // 0x8082E81
u32 CheckNextEventDefinition(u32*); // 0x8082F29
void ClearActiveEventRegistry(u32*); // 0x80845A5
int MapEventEngineExists(); // 0x800D199

#endif // GBAFE_EVENT_H
