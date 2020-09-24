.class public final Lcom/android/settingslib/j/c;
.super Ljava/lang/Object;
.source "PowerWhitelistBackend.java"


# static fields
.field private static c:Lcom/android/settingslib/j/c;


# instance fields
.field public final a:Landroid/os/IDeviceIdleController;

.field public final b:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "deviceidle"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/j/c;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/j/c;->e:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/j/c;->f:Landroid/util/ArraySet;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/j/c;->d:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    .line 62
    invoke-direct {p0}, Lcom/android/settingslib/j/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/j/c;
    .locals 1

    .line 192
    sget-object v0, Lcom/android/settingslib/j/c;->c:Lcom/android/settingslib/j/c;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/android/settingslib/j/c;

    invoke-direct {v0, p0}, Lcom/android/settingslib/j/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/j/c;->c:Lcom/android/settingslib/j/c;

    .line 195
    :cond_0
    sget-object p0, Lcom/android/settingslib/j/c;->c:Lcom/android/settingslib/j/c;

    return-object p0
.end method

.method private a()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/j/c;->e:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/j/c;->f:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 174
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 175
    iget-object v5, p0, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 178
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 179
    iget-object v5, p0, Lcom/android/settingslib/j/c;->e:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/j/c;->a:Landroid/os/IDeviceIdleController;

    .line 182
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 183
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 184
    iget-object v4, p0, Lcom/android/settingslib/j/c;->f:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    .line 187
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/j/c;->e:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/j/c;->b:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/j/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/j/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/settingslib/j/c;->d:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/j/c;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/j/c;->d:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 109
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
