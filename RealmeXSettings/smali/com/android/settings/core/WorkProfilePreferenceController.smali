.class public abstract Lcom/android/settings/core/WorkProfilePreferenceController;
.super Lcom/android/settings/core/a;
.source "WorkProfilePreferenceController.java"


# instance fields
.field private final mWorkProfileUser:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/WorkProfilePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/core/WorkProfilePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method protected abstract getSourceMetricsCategory()I
.end method

.method protected getWorkProfileUser()Landroid/os/UserHandle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/settings/core/WorkProfilePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/WorkProfilePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 89
    :cond_0
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/WorkProfilePreferenceController;->getSourceMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/WorkProfilePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
