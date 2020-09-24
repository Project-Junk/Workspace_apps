.class public Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AssistFlashScreenPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/internal/app/AssistUtils;

.field private final b:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a:Lcom/android/internal/app/AssistUtils;

    .line 55
    new-instance p1, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;-><init>(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    instance-of v0, v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 115
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b()Landroid/content/ComponentName;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->a(Landroid/content/Context;)Z

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a()V

    return-void
.end method

.method private a(Landroid/content/ComponentName;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method private b()Landroid/content/ComponentName;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/ComponentName;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->d:Landroidx/preference/Preference;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "flash"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "assist_disclosure_enabled"

    .line 97
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->b:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->a()V

    return-void
.end method
