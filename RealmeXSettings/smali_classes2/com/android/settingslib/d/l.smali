.class public final Lcom/android/settingslib/d/l;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/l$a;
    }
.end annotation


# static fields
.field private static b:Z = true


# instance fields
.field public a:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/bluetooth/BluetoothHearingAid;

.field private final e:Lcom/android/settingslib/d/h;

.field private final f:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/settingslib/d/l;->c:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settingslib/d/l;->e:Lcom/android/settingslib/d/h;

    .line 97
    iput-object p3, p0, Lcom/android/settingslib/d/l;->f:Lcom/android/settingslib/d/s;

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/l$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/l$a;-><init>(Lcom/android/settingslib/d/l;B)V

    const/16 v0, 0x15

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/l;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/l;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/l;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/settingslib/d/l;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/d/l;->e:Lcom/android/settingslib/d/h;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settingslib/d/l;)Lcom/android/settingslib/d/s;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/d/l;->f:Lcom/android/settingslib/d/s;

    return-object p0
.end method

.method static synthetic g()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/settingslib/d/l;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/android/settingslib/d/l;->c:Landroid/content/Context;

    const-string v0, "ic_bt_hearing_aid"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

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
    iget-object p2, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 197
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/settingslib/d/l;->a:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Landroid/bluetooth/BluetoothDevice;)J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "HearingAidProfile"

    const-string v1, "finalize()"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/android/settingslib/d/l;->d:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up Hearing Aid proxy"

    .line 274
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 245
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_hearing_aid:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HearingAid"

    return-object v0
.end method
