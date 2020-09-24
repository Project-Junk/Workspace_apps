.class public final Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "QSFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final airplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final aliPayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliPayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final aliScanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliScanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final batterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final calculatorTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CalculatorTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CameraTile;",
            ">;"
        }
    .end annotation
.end field

.field private final castTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final childrenModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final cleanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CleanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final clockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ClockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final colorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final dndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorDndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final flashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final hotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final locationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorLocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final lockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/LockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorNfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final nightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final realmeRingerModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final ringerModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RingerModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final smallScreenTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/SmallScreenTile;",
            ">;"
        }
    .end annotation
.end field

.field private final uiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final userTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final wechatPayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatPayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final wechatScanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatScanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final workModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorDndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorLocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorNfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ClockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CameraTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/LockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliPayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliScanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatPayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatScanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CleanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/SmallScreenTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CalculatorTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RingerModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 137
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 138
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 139
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 140
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dndTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 141
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 142
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 143
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 144
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 145
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 146
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->locationTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 147
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->castTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 148
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 149
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->userTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 150
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->batterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 151
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 152
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 153
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 155
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->clockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 156
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cameraTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 157
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->lockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 158
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aliPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 159
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aliScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 160
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wechatPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 161
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wechatScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 162
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cleanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 163
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->smallScreenTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 164
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->childrenModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 165
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->calculatorTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 166
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->ringerModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 167
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->realmeRingerModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 168
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorDndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorLocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorNfcTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ClockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CameraTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/LockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliPayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliScanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatPayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatScanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CleanTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/SmallScreenTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CalculatorTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RingerModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;)",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    .line 241
    new-instance v33, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v32}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v33
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
    .locals 36

    move-object/from16 v0, p0

    .line 173
    new-instance v34, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    move-object/from16 v1, v34

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wifiTileProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->bluetoothTileProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cellularTileProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dndTileProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->colorInversionTileProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->workModeTileProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->rotationLockTileProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->flashlightTileProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->locationTileProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->castTileProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->hotspotTileProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->userTileProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->batterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->clockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cameraTileProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->lockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aliPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->aliScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wechatPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->wechatScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->cleanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->smallScreenTileProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->childrenModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->calculatorTileProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->ringerModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->realmeRingerModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v1

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v0

    move-object/from16 v1, v35

    invoke-direct/range {v1 .. v33}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v34
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->get()Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    move-result-object p0

    return-object p0
.end method
