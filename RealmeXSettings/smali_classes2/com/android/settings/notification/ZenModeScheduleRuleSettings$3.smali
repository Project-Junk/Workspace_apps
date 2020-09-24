.class final Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne p2, v0, :cond_3

    return v1

    .line 130
    :cond_3
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->a:Z

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

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 132
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 133
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->b(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->a(Landroid/net/Uri;)V

    return v1
.end method
