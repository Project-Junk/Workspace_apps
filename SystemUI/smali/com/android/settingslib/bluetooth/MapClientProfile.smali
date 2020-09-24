.class public final Lcom/android/settingslib/bluetooth/MapClientProfile;
.super Ljava/lang/Object;
.source "MapClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "MAP Client"

.field private static final ORDINAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MapClientProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/MapClientProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 103
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapClientProfile;Lcom/android/settingslib/bluetooth/MapClientProfile$1;)V

    const/16 v0, 0x12

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/MapClientProfile;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/MapClientProfile;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 132
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "MapClientProfile"

    const-string v1, "finalize()"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error cleaning up MAP Client proxy"

    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
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

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez p0, :cond_0

    .line 171
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 173
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothMapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mContext:Landroid/content/Context;

    const-string p1, "ic_phone"

    invoke-static {p0, p1}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 188
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_map:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 198
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_map_profile_summary_connected:I

    return p0

    .line 195
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_map_profile_summary_use_for:I

    return p0
.end method

.method public isAutoConnectable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProfileReady(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mIsProfileReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapClientProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 161
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 165
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MAP Client"

    return-object p0
.end method
