.class public Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AssistScreenshotPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/internal/app/AssistUtils;

.field private final b:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a:Lcom/android/internal/app/AssistUtils;

    .line 54
    new-instance p1, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;-><init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->b:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    instance-of v0, v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_3

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "assist_screenshot_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 115
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v3, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "assist_structure_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->c:Landroidx/preference/PreferenceScreen;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->d:Landroidx/preference/Preference;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "screenshot"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->b:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "assist_screenshot_enabled"

    .line 95
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->b:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->a()V

    return-void
.end method
