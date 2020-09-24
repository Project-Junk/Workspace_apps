.class final Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

    .line 113
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 117
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->a:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOnPreferenceChangeListener_preference = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", val = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleRuleSettings;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method
