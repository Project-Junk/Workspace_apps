.class public Lcom/android/settingslib/bluetooth/PbapServerProfile;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "PBAP Server"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ORDINAL:I = 0x6

.field static final PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "PbapServerProfile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 49
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile$PbapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapServerProfile;Lcom/android/settingslib/bluetooth/PbapServerProfile$1;)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/PbapServerProfile;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/PbapServerProfile;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

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

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "PbapServerProfile"

    const-string v1, "finalize()"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error cleaning up PBAP proxy"

    .line 151
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mService:Landroid/bluetooth/BluetoothPbap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mContext:Landroid/content/Context;

    const-string p1, "ic_phone"

    invoke-static {p0, p1}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 133
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_pbap:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 137
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_pbap_summary:I

    return p0
.end method

.method public isAutoConnectable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/PbapServerProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PBAP Server"

    return-object p0
.end method
