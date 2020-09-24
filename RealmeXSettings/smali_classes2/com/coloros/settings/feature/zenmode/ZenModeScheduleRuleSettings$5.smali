.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;
.super Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;Landroid/content/Context;[ILandroid/app/Dialog;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;->d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[ILandroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method protected final a([I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;->d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;->d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 279
    :cond_1
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "days.onChanged days="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;->d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 281
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$5;->d:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->a(Landroid/net/Uri;)V

    return-void
.end method
