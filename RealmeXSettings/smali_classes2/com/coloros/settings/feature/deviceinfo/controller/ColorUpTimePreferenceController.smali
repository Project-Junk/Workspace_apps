.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorUpTimePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "up_time"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 43
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController$1;

    invoke-direct {p1, p0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->b:Landroid/os/Handler;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;)V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1098
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->a(Landroidx/preference/Preference;)V

    .line 1099
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->b:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    const-wide/16 v2, 0x3c

    .line 1089
    rem-long v4, v0, v2

    long-to-int v4, v4

    .line 1090
    div-long v5, v0, v2

    rem-long/2addr v5, v2

    long-to-int v2, v5

    const-wide/16 v5, 0xe10

    .line 1091
    div-long/2addr v0, v5

    long-to-int v0, v0

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->b:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;->b()V

    return-void
.end method
