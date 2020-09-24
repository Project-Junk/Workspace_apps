.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final CTS_TILE:Ljava/lang/String; = "custom(android.app.stubs/.TestTileService)"

.field private static final TAG:Ljava/lang/String; = "QSFactory"


# instance fields
.field private final mAirplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorAirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAliPayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliPayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAliScanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/AliScanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalculatorTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CalculatorTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CameraTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCastTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorCellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildrenModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/CleanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mClockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ClockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorDndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorFlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorLocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/LockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorNfcTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealmeRingerModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RealmeRingerModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRingerModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/RingerModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorRotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmallScreenTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/SmallScreenTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWechatPayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatPayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWechatScanTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/WechatScanTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/coloros/systemui/qs/tiles/ColorWifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkModeTileProvider:Ljavax/inject/Provider;
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

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 174
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 175
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 176
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 177
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 178
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 179
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 180
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 181
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 182
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 183
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 184
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 185
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 186
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 187
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 188
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 189
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 190
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 191
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 192
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 195
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mClockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 196
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCameraTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 197
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 198
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAliPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 199
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAliScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 200
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWechatPayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 201
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWechatScanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 202
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCleanTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 203
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSmallScreenTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 204
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mChildrenModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 205
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCalculatorTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 206
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRingerModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 210
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRealmeRingerModeTileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .locals 2

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "weixinpay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "lockscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "blackscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "ringermode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "weixinscan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "childrenmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "smallscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "work"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "dark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "switchdata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_19
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1a
    const-string v0, "aliscan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v0, "calculator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1c
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1d
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_1e
    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_1f
    const-string v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_20
    const-string v0, "envelope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "intent("

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;

    move-result-object p0

    return-object p0

    .line 316
    :pswitch_0
    new-instance p1, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object p1

    .line 312
    :pswitch_1
    new-instance p1, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/BlackScreenTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object p1

    .line 310
    :pswitch_2
    new-instance p1, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/tiles/EnvelopeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object p1

    .line 306
    :pswitch_3
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRealmeRingerModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRingerModeTileProvider:Ljavax/inject/Provider;

    .line 307
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    :goto_2
    return-object p0

    .line 300
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCalculatorTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 298
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSmallScreenTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 296
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCleanTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 294
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mChildrenModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 292
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWechatScanTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 290
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWechatPayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 288
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAliScanTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 286
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAliPayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 284
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 282
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCameraTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 280
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mClockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 276
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 274
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNfcTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 272
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 270
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 268
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 266
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 264
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 262
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 260
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 258
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 256
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 254
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 252
    :pswitch_1b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 250
    :pswitch_1c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 248
    :pswitch_1d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 246
    :pswitch_1e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 244
    :pswitch_1f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 242
    :pswitch_20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 326
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const-string v1, "custom("

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/external/ColorCustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0

    .line 329
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0

    .line 345
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    const-string v0, "dbg:mem"

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 355
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No stock tile spec: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a1df030 -> :sswitch_20
        -0x783813ed -> :sswitch_1f
        -0x545695b6 -> :sswitch_1e
        -0x51863cdb -> :sswitch_1d
        -0x468444da -> :sswitch_1c
        -0x43dc94fe -> :sswitch_1b
        -0x367abee5 -> :sswitch_1a
        -0x285a60ae -> :sswitch_19
        -0x14ac1322 -> :sswitch_18
        -0x13be51f3 -> :sswitch_17
        -0x266f082 -> :sswitch_16
        0xc52 -> :sswitch_15
        0x1851a -> :sswitch_14
        0x1a9ab -> :sswitch_13
        0x2e7b3f -> :sswitch_12
        0x2e8962 -> :sswitch_11
        0x2eef76 -> :sswitch_10
        0x36ebcb -> :sswitch_f
        0x37af15 -> :sswitch_e
        0x37c711 -> :sswitch_d
        0x1f53433 -> :sswitch_c
        0x5a5b64d -> :sswitch_b
        0x5a5dc0e -> :sswitch_a
        0x63f6418 -> :sswitch_9
        0x6826e95 -> :sswitch_8
        0xab08022 -> :sswitch_7
        0x2ddb47df -> :sswitch_6
        0x36fc2e00 -> :sswitch_5
        0x418a9ecf -> :sswitch_4
        0x4eab152b -> :sswitch_3
        0x6adcb957 -> :sswitch_2
        0x6cd57b06 -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 228
    instance-of v0, p0, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v0, :cond_0

    const-string v0, "custom(android.app.stubs/.TestTileService)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    :cond_1
    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 361
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120458

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 362
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 364
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-object p1

    .line 372
    :cond_0
    new-instance p1, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;

    invoke-direct {p1, v0, p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object p1
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method
