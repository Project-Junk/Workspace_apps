.class public Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorNonSensingCertificationPreferenceController.java"


# static fields
.field public static final DEFAULT_VALUE_ENABLE_NON_SENSING_CERTIFICATION:I = 0x1

.field public static final KEY_NON_SENSING_CERTIFICATION:Ljava/lang/String; = "key_non_sensing_certification"

.field private static final KEY_NON_SENSING_CERTIFICATION_CATEGORY:Ljava/lang/String; = "key_non_sensing_certification_category"

.field public static final NON_SENSING_CERTIFICATION_ENABLE:Ljava/lang/String; = "non_sensing_certification_enable"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_non_sensing_certification"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_non_sensing_certification_category"

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 64
    invoke-static {}, Lcom/coloros/settings/utils/al;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "non_sensing_certification_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/controller/ColorNonSensingCertificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "non_sensing_certification_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
