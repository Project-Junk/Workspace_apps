.class final Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;
.super Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V

    return-void
.end method


# virtual methods
.method protected final a([I)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 234
    :cond_1
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "days.onChanged days="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 236
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->a(Landroid/net/Uri;)V

    return-void
.end method
