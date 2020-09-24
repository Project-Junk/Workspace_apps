.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final CARD_STRINGS:Ljava/lang/String; = "card_strings"

.field private static final DBG:Z = true

.field private static final DEFAULT_CARD:Ljava/lang/String; = "default_card"

.field private static final EID_LENGTH:I = 0x20

.field private static final EVENT_EID_READY:I = 0x9

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_GET_SLOT_STATUS_DONE:I = 0x4

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_RADIO_ON:I = 0x5

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x7

.field private static final EVENT_SIM_REFRESH:I = 0x8

.field private static final EVENT_SLOT_STATUS_CHANGED:I = 0x2

.field public static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final TEMPORARILY_UNSUPPORTED_CARD_ID:I = -0x3

.field private static final VDBG:Z = false

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sLastSlotStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation
.end field

.field static sLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mCardStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDefaultEuiccCardId:I

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mIsSlotStatusSupported:Z

.field private mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

.field private mPhoneIdToSlotId:[I

.field private mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field public mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    .line 172
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    const-string v1, "Creating UiccController"

    .line 191
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "config_num_physical_slots = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 198
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 205
    array-length v1, v2

    .line 208
    :cond_0
    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccSlot;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 209
    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    .line 210
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 212
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/telephony/RadioConfig;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 213
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v1, v2}, Lcom/android/internal/telephony/RadioConfig;->registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v1

    if-ge p2, v2, :cond_1

    .line 215
    aget-object v1, v1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    const/4 v2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    const/4 v2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    const/16 v2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 222
    :cond_1
    new-instance p2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->loadCardStrings()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    const/4 p1, -0x2

    .line 224
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    return-void
.end method

.method private addCardId(Ljava/lang/String;)V
    .locals 2

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 652
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->saveCardStrings()V

    :cond_2
    return-void
.end method

.method private eidIsNotSupported(Lcom/android/internal/telephony/uicc/IccCardStatus;)Z
    .locals 1

    .line 640
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 508
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 509
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 510
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    .line 511
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 512
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 513
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-object v0
.end method

.method static getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 1

    .line 533
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "LOCKED"

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "LOADED"

    return-object p0

    :pswitch_1
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    :pswitch_2
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    :pswitch_3
    return-object v0

    :pswitch_4
    const-string p0, "NOT_READY"

    return-object p0

    :pswitch_5
    const-string p0, "READY"

    return-object p0

    :pswitch_6
    return-object v0

    :pswitch_7
    const-string p0, "ABSENT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 248
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    .line 253
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v0

    return-object v1

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 254
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSlotIdFromPhoneId(I)I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget p1, v0, p1

    return p1
.end method

.method public static isCdmaSupported(Landroid/content/Context;)Z
    .locals 1

    .line 988
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.cdma"

    .line 990
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isValidPhoneIndex(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 995
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isValidSlotIndex(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadCardStrings()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 731
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "card_strings"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 736
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "UiccController"

    .line 1004
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logPhoneIdToSlotIdMapping()V
    .locals 3

    const-string v0, "mPhoneIdToSlotId mapping:"

    .line 885
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 886
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    phoneId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 2

    .line 181
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 186
    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v0

    return-object v1

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UiccController.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 3

    .line 953
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_0

    .line 954
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEidReady: exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 959
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onEidReady: invalid index: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 962
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p1, p1, p2

    .line 963
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    if-nez p2, :cond_2

    .line 965
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEidReady: UiccCard in slot "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 970
    :cond_2
    check-cast p2, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 972
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 975
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEidReady: eid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultEuiccCardId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 979
    :cond_4
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    return-void
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 6

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string p2, "UiccController"

    const-string v0, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    .line 565
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p2, v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 570
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "UiccController"

    const-string v0, "onGetIccCardStatusDone: invalid index : "

    .line 571
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    .line 575
    :cond_1
    :try_start_2
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 577
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetIccCardStatusDone: phoneId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IccCardStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 579
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 582
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 585
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->eidIsNotSupported(Lcom/android/internal/telephony/uicc/IccCardStatus;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "eid is not supported"

    .line 587
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 588
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 590
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v0, v2, v3

    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 599
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    aput-object v3, v2, v0

    .line 602
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V

    .line 604
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mUiccSlots["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has no card. Notifying IccChangedRegistrants"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 607
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 612
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 614
    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 616
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 621
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    if-eq v0, v1, :cond_7

    .line 623
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 627
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    :cond_8
    const-string p1, "Notifying IccChangedRegistrants"

    .line 630
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onGetSlotStatusDone(Landroid/os/AsyncResult;)V
    .locals 12

    monitor-enter p0

    .line 747
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 749
    monitor-exit p0

    return-void

    .line 751
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 754
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "onGetSlotStatusDone: request not supported; marking mIsSlotStatusSupported to false"

    .line 765
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 766
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 767
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 758
    :cond_2
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected error getting slot status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UiccController"

    .line 759
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 772
    :cond_3
    :try_start_3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 774
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->slotStatusChanged(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "onGetSlotStatusDone: No change in slot status"

    .line 775
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    monitor-exit p0

    return-void

    .line 779
    :cond_4
    :try_start_4
    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 785
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v0, v6, :cond_e

    .line 786
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 787
    iget-object v8, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object v9, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_ACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    if-ne v8, v9, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    if-eqz v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 792
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "UiccController"

    .line 793
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Skipping slot "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " as phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is not available to communicate with this slot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 797
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    iget v10, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    aput v0, v9, v10

    .line 801
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v0

    if-nez v9, :cond_8

    .line 805
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v10, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v8}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    aput-object v10, v9, v0

    .line 808
    :cond_8
    iget v9, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 809
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v0

    goto :goto_4

    .line 811
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v0

    if-eqz v8, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v11, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    aget-object v10, v10, v11

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v9, v10, v6, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V

    .line 815
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v8, :cond_b

    move v3, v7

    .line 820
    :cond_b
    iget-object v2, v6, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 821
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 826
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    if-nez v4, :cond_c

    .line 833
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Using eid="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in slot="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to set mDefaultEuiccCardId="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move v2, v7

    move v4, v2

    goto :goto_6

    :cond_c
    move v2, v7

    :cond_d
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_e
    if-eqz v2, :cond_f

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    const-string p1, "onGetSlotStatusDone: setting TEMPORARILY_UNSUPPORTED_CARD_ID"

    .line 841
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 842
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 848
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length p1, p1

    if-eq v5, p1, :cond_10

    const-string p1, "UiccController"

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Number of active slots "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match the number of Phones"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v2, v0

    :goto_7
    if-ge v1, v2, :cond_12

    aget v3, v0, v1

    .line 856
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 859
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 857
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slotId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mapped to multiple phoneIds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 863
    :cond_12
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 864
    invoke-virtual {p1, v7}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 866
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 867
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 869
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 868
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 5

    .line 892
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_0

    .line 893
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSimRefresh: Sim REFRESH with exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 897
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSimRefresh: invalid index : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 902
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 903
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSimRefresh: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 904
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string p1, "onSimRefresh: received without input"

    .line 907
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 911
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_3

    .line 913
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSimRefresh: refresh on null card : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 918
    :cond_3
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    return-void

    .line 922
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 926
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    .line 932
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p1, v3, :cond_6

    .line 935
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 936
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 937
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "UNKNOWN"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 939
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11100aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 942
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 947
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    return-void
.end method

.method private saveCardStrings()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 741
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_strings"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private slotStatusChanged(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;)Z"
        }
    .end annotation

    .line 873
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 877
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method static updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "phone"

    .line 550
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 552
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 556
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p0, "UiccController"

    const-string p1, "subInfoUpdate is null."

    .line 559
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCardLog(Ljava/lang/String;)V
    .locals 1

    .line 1008
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public convertToPublicCardId(Ljava/lang/String;)I
    .locals 4

    .line 669
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 674
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    return v2

    .line 678
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 679
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1012
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccController: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mInstance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIccChangedRegistrants: size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1016
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    const-string v3, "]="

    if-ge v1, v2, :cond_0

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  mIccChangedRegistrants["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 1018
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1021
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mIsCdmaSupported="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mUiccSlots: size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mCardStrings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mDefaultEuiccCardId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1027
    aget-object v1, v1, v0

    const-string v2, "  mUiccSlots["

    if-nez v1, :cond_1

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1030
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, " sLocalLog= "

    .line 1034
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getAllUiccCardInfos()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 694
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 695
    aget-object v2, v2, v1

    .line 696
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v3

    const/4 v4, 0x0

    .line 698
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 702
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v6

    .line 704
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v8

    if-eqz v3, :cond_0

    .line 706
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v4

    move-object v5, v2

    goto :goto_1

    .line 710
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v2

    move-object v5, v4

    move v4, v2

    .line 712
    :goto_1
    new-instance v9, Landroid/telephony/UiccCardInfo;

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/UiccCardInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 714
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCardIdForDefaultEuicc()I
    .locals 2

    .line 723
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 398
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 403
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 386
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 391
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPhoneIdFromSlotId(I)I
    .locals 3

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 235
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 259
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 523
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 528
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 286
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 293
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .line 271
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 276
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 3

    .line 303
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    .line 308
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 332
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 336
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccSlotForCardId(Ljava/lang/String;)I
    .locals 4

    .line 363
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 365
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    monitor-exit v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 375
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    monitor-exit v0

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    .line 379
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 380
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 345
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result p1

    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 352
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 317
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 428
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_2

    .line 437
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage: Received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 439
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 440
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    const-string v1, "UiccController"

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "Received EVENT_EID_READY"

    .line 488
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "Received EVENT_SIM_REFRESH"

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "EVENT_RADIO_UNAVAILABLE, dispose card"

    .line 476
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 479
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable()V

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON, calling getIccCardStatus"

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 455
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON for phoneId 0, calling getIccSlotsStatus"

    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RadioConfig;->getSimSlotsStatus(Landroid/os/Message;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "Received EVENT_GET_ICC_STATUS_DONE"

    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_1

    :pswitch_5
    const-string p1, "Received EVENT_SLOT_STATUS_CHANGED or EVENT_GET_SLOT_STATUS_DONE"

    .line 471
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->onGetSlotStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_6
    const-string p1, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    .line 442
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 492
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Unknown Event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :cond_3
    :goto_2
    const-string v2, "UiccController"

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid phoneId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received with event "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 411
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 416
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 417
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public switchSlots([ILandroid/os/Message;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->setSimSlotsMapping([ILandroid/os/Message;)V

    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2

    .line 421
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 423
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
