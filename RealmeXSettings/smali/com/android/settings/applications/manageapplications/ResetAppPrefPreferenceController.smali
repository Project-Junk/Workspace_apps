.class public Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ResetAppPrefPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/i;


# instance fields
.field private a:Lcom/android/settings/applications/manageapplications/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/settings/applications/manageapplications/f;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/manageapplications/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->a:Lcom/android/settings/applications/manageapplications/f;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "reset_app_prefs"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/f;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->a:Lcom/android/settings/applications/manageapplications/f;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/f;->b(Landroid/os/Bundle;)V

    return-void
.end method
