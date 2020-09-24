.class public abstract Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AbstractUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/Preference;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a()Landroid/os/Handler;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$a;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$a;-><init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->b:Landroid/os/Handler;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->a:Landroidx/preference/Preference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "up_time"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->a:Landroidx/preference/Preference;

    .line 81
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->b()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "up_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
