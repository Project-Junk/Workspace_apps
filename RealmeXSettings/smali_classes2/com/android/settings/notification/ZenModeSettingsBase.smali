.class public abstract Lcom/android/settings/notification/ZenModeSettingsBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettingsBase$a;
    }
.end annotation


# static fields
.field protected static final j:Z


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/android/settings/notification/ZenModeSettingsBase$a;

.field protected k:Landroid/content/Context;

.field protected p:I

.field protected q:Lcom/android/settings/notification/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_adjust_volume"

    .line 50
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->a:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase$a;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;B)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->b:Lcom/android/settings/notification/ZenModeSettingsBase$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Z)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->p:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    iget v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->p:I

    if-ne v0, v1, :cond_0

    return-void

    .line 95
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->p:I

    .line 96
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateZenMode mZenMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeSettingsBase;)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ZenModeSettings"

    return-object v0
.end method

.method final a(Lcom/android/settingslib/core/a;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Cannot find preference with key %s in Controller %s"

    .line 138
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->k:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->q:Lcom/android/settings/notification/w;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->a(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->b:Lcom/android/settings/notification/ZenModeSettingsBase$a;

    .line 3113
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 4035
    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3113
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 73
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->a(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->b:Lcom/android/settings/notification/ZenModeSettingsBase$a;

    .line 1108
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 2035
    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1108
    iget-object v2, v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1109
    iget-object v1, v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 3035
    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1109
    iget-object v2, v0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->finish()V

    :cond_1
    return-void
.end method
