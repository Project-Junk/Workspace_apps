.class public Lcom/android/settings/dream/CurrentDreamPreferenceController;
.super Lcom/android/settings/core/a;
.source "CurrentDreamPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settingslib/i/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/android/settingslib/i/a;->a(Landroid/content/Context;)Lcom/android/settingslib/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/i/a;

    return-void
.end method

.method private getActiveDreamInfo()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/settingslib/i/a$a;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->a()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$vIsmIz-FpziPRYzzkOVR0lV0iIE;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$vIsmIz-FpziPRYzzkOVR0lV0iIE;

    .line 78
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/i/a$a;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/settingslib/i/a$a;->c:Z

    return p0
.end method

.method private launchScreenSaverSettings()V
    .locals 4

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/i/a$a;

    const/4 v2, 0x1

    .line 1262
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz v0, :cond_2

    .line 1263
    iget-object v2, v0, Lcom/android/settingslib/i/a$a;->e:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1266
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/settingslib/i/a$a;->e:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setGearClickListenerForPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 56
    instance-of v0, p1, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    check-cast p1, Lcom/android/settings/widget/GearPreference;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/i/a$a;

    iget-object v0, v0, Lcom/android/settingslib/i/a$a;->e:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$G4QKd1o721tCGbuvqlpHDQOMZm4;

    invoke-direct {v0, p0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$G4QKd1o721tCGbuvqlpHDQOMZm4;-><init>(Lcom/android/settings/dream/CurrentDreamPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setGearClickListenerForPreference$0$CurrentDreamPreferenceController(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->launchScreenSaverSettings()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->setGearClickListenerForPreference(Landroidx/preference/Preference;)V

    return-void
.end method
