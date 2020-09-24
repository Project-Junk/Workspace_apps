.class public Lcom/coloros/settings/feature/security/controller/FeedbackLogController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "FeedbackLogController.java"


# static fields
.field private static final KEY_OPPO_FEEDBACK_LOG_SWITCH:Ljava/lang/String; = "oppo_feedback_log_switch"

.field public static final OPPO_FEEDBACK_SWITCH:Ljava/lang/String; = "oppo_feedback_swtich"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oppo_feedback_log_switch"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/coloros/settings/utils/as;->a()Z

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

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppo_feedback_swtich"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/FeedbackLogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_feedback_swtich"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
