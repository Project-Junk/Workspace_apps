.class final Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;
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

    .line 338
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 341
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xaf

    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 342
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->b(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Z

    .line 343
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->f:Landroid/service/notification/ZenModeConfig;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->c(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->o()Z

    return-void
.end method
