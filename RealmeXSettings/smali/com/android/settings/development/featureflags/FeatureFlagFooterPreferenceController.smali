.class public Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;
.super Lcom/android/settings/core/a;
.source "FeatureFlagFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# instance fields
.field private mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "feature_flag_footer_pref"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f12094d

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method

.method public setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method
