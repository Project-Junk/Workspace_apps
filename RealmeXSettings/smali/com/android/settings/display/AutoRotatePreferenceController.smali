.class public Lcom/android/settings/display/AutoRotatePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoRotatePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mPreference:Landroidx/preference/Preference;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AutoRotatePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_rotate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/display/AutoRotatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_rotate"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/settings/display/AutoRotatePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AutoRotatePreferenceController$1;-><init>(Lcom/android/settings/display/AutoRotatePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 93
    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/display/AutoRotatePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
