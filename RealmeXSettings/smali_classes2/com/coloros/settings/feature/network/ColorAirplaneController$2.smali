.class final Lcom/coloros/settings/feature/network/ColorAirplaneController$2;
.super Landroid/os/Handler;
.source "ColorAirplaneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/network/ColorAirplaneController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/network/ColorAirplaneController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/network/ColorAirplaneController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 92
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$2;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {v0}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$100(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method
