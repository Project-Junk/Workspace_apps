.class public Lcom/coloros/settings/feature/security/controller/RecommendSafetyAppController;
.super Lcom/android/settings/core/a;
.source "RecommendSafetyAppController.java"


# static fields
.field public static final KEY_RECOMMEND_SAFETY_APPLICATION:Ljava/lang/String; = "recommend_safety_applications"

.field public static final OPPO_APK_PRESCAN_SWITCH:Ljava/lang/String; = "oppo_apk_prescan_switch"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recommend_safety_applications"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 36
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/RecommendSafetyAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppo_apk_prescan_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 47
    :cond_1
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/RecommendSafetyAppController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const v1, 0x7f121707

    goto :goto_0

    :cond_2
    const v1, 0x7f121706

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
