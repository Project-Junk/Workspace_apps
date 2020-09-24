.class public final Lcom/android/settings/connecteddevice/usb/b;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# instance fields
.field a:Landroid/hardware/usb/UsbManager;

.field b:Landroid/hardware/usb/UsbPort;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "user"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/b;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    const-string v0, "no_usb_file_transfer"

    .line 1181
    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/b;->c:Z

    .line 1190
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1189
    invoke-virtual {p2, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->d:Z

    const-string v0, "no_config_tethering"

    .line 2185
    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/b;->e:Z

    .line 2195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2194
    invoke-virtual {p2, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    .line 72
    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/b;->f:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.midi"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/connecteddevice/usb/b;->g:Z

    const-string p2, "connectivity"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 77
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/usb/b;->h:Z

    .line 79
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/b;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    .line 212
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    .line 213
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 218
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbPort;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    .line 221
    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/b;->d()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    return v0
.end method

.method public final a(J)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/b;->d()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    return v0
.end method

.method public final b(J)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public final c()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->b:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 156
    invoke-virtual {v0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/b;->i:Landroid/hardware/usb/UsbPortStatus;

    .line 159
    invoke-virtual {v0, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(J)Z
    .locals 13

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->g:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->h:Z

    const-wide/16 v4, 0x20

    if-nez v0, :cond_2

    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 2199
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->c:Z

    const-wide/16 v6, 0x10

    const-wide/16 v8, 0x4

    const/4 v10, 0x1

    if-eqz v0, :cond_3

    and-long v11, p1, v8

    cmp-long v0, v11, v2

    if-nez v0, :cond_4

    and-long v11, p1, v6

    cmp-long v0, v11, v2

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->e:Z

    if-eqz v0, :cond_5

    and-long v11, p1, v4

    cmp-long v0, v11, v2

    if-eqz v0, :cond_5

    :cond_4
    move v0, v10

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-nez v0, :cond_9

    .line 2205
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->d:Z

    if-eqz v0, :cond_6

    and-long/2addr v8, p1

    cmp-long v0, v8, v2

    if-nez v0, :cond_7

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/b;->f:Z

    if-eqz v0, :cond_8

    and-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-eqz p1, :cond_8

    :cond_7
    move p1, v10

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    if-nez p1, :cond_9

    return v10

    :cond_9
    return v1
.end method
