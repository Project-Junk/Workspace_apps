.class public Lcom/coloros/settings/feature/security/controller/UserExperienceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "UserExperienceController.java"


# static fields
.field private static final KEY_USER_ECPERIENCE:Ljava/lang/String; = "user_experience"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final OPPO_CTA_USER_ECPERIENCE:Ljava/lang/String; = "oppo_cta_user_experience"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "user_experience"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/UserExperienceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/UserExperienceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppo_cta_user_experience"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/UserExperienceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_cta_user_experience"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
