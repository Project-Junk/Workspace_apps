.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$TimePickerPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 169
    :cond_1
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne p2, v0, :cond_3

    return v1

    .line 173
    :cond_3
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPrefChange end h="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " m="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZenModeSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$4;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->a(Landroid/net/Uri;)V

    return v1
.end method
