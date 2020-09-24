.class public Lcom/android/settings/users/MultiUserFooterPreferenceController;
.super Lcom/android/settings/core/a;
.source "MultiUserFooterPreferenceController.java"


# instance fields
.field private mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field final mUserCaps:Lcom/android/settings/users/f;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "dummy_key"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/users/f;->a(Landroid/content/Context;)Lcom/android/settings/users/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/users/MultiUserFooterPreferenceController;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mUserCaps:Lcom/android/settings/users/f;

    iget-object v0, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/users/f;->b(Landroid/content/Context;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/users/MultiUserFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f12184d

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/users/MultiUserFooterPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setVisible(Z)V

    return-void
.end method
