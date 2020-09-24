.class public Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "StatusBarSettingsValueProxy.java"


# static fields
.field public static final KEY_NOTIFICATION_PROMPT_MODE:Ljava/lang/String; = "notification_prompt_mode"

.field public static final KEY_PRIMARY_SLOT:Ljava/lang/String; = "oppo_multi_sim_network_primary_slot"

.field public static final NOTIFICATION_PROMPT_MODE_OFF:I = 0x0

.field public static final NOTIFICATION_PROMPT_MODE_ON:I = 0x1

.field public static final PRIMARY_SLOT_MAIN:I = 0x0

.field public static final PRIMARY_SLOT_SUB:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getNotificationPromptModeState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "notification_prompt_mode"

    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPrimarySlotState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "oppo_multi_sim_network_primary_slot"

    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setNotificationPromptModeState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification_prompt_mode"

    .line 38
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPrimarySlotState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "oppo_multi_sim_network_primary_slot"

    .line 46
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->setGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
