.class public Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;
.super Lcom/android/settings/core/a;
.source "FingerFaceSwitchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_OPPO_FINGERPRINT_FACE_UNLOCK:Ljava/lang/String; = "key_oppo_fingerprint_face_unlock"

.field private static final TAG:Ljava/lang/String; = "FingerFaceSwitchPreferenceController"


# instance fields
.field private mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mIsFaceSupport:Z

.field private mMotorCamera:Z

.field private mOpticalFingerPrint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_oppo_fingerprint_face_unlock"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mIsFaceSupport:Z

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mOpticalFingerPrint:Z

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mMotorCamera:Z

    return-void
.end method

.method private updateCombinationUI()V
    .locals 8

    .line 71
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mMotorCamera:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mIsFaceSupport:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mOpticalFingerPrint:Z

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v3

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateCombinationUI status opticalFingerPrint = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", faceUnlockEnabled = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", fingerEnable = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerFaceSwitchPreferenceController"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    .line 85
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateCombinationUI status hasFingerprints = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasFaceData = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    if-eqz v2, :cond_4

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getFingerFaceSwitchValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    goto :goto_2

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-ne v0, v3, :cond_3

    move v5, v3

    :cond_3
    invoke-virtual {v1, v5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 97
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v1, 0x7f120f62

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(I)V

    return-void

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const v1, 0x7f120f61

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_oppo_fingerprint_face_unlock"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mCombinationSwitch:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mMotorCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mIsFaceSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mOpticalFingerPrint:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 111
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_oppo_fingerprint_face_unlock"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 114
    iget-object p2, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/controller/FingerFaceSwitchPreferenceController;->updateCombinationUI()V

    return-void
.end method
