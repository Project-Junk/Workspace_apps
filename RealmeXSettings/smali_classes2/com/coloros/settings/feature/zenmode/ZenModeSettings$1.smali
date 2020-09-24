.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;
.super Landroid/os/Handler;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 210
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshToggleState_setChecked = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
