.class final Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/coloros/settings/feature/zenmode/OppoZenModeListPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne p1, v0, :cond_1

    return v1

    .line 142
    :cond_1
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPrefChange zenMode="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZenModeSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    iget-object v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->o()Z

    return v1
.end method
