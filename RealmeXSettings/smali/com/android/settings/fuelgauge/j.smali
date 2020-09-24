.class public final Lcom/android/settings/fuelgauge/j;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/i;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/pm/PackageManager;

.field protected b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.providers.media"

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.systemui"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/j;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/j;->a:Landroid/content/pm/PackageManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/j;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_smart_battery_available"

    .line 137
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6

    .line 53
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/j;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    return v1

    .line 58
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 59
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 60
    sget-object v5, Lcom/android/settings/fuelgauge/j;->c:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
