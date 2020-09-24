.class public Lcom/android/settingslib/bluetooth/HearingAidProfile;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HearingAid"

.field private static final ORDINAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HearingAidProfile"

.field private static V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHearingAid;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 97
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;Lcom/android/settingslib/bluetooth/HearingAidProfile$1;)V

    const/16 p0, 0x15

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/HearingAidProfile;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->V:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method private getDevicesByStates([I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    .line 144
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "HearingAidProfile"

    const-string v1, "finalize()"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error cleaning up Hearing Aid proxy"

    .line 274
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getActiveDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectableDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 135
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mContext:Landroid/content/Context;

    const-string p1, "ic_bt_hearing_aid"

    invoke-static {p0, p1}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 245
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_hearing_aid:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 258
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 255
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hearing_aid_profile_summary_connected:I

    return p0

    .line 252
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hearing_aid_profile_summary_use_for:I

    return p0
.end method

.method public getVolume()I
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid;->getVolume()I

    move-result p0

    return p0
.end method

.method public isAutoConnectable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 194
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 197
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HearingAid"

    return-object p0
.end method
