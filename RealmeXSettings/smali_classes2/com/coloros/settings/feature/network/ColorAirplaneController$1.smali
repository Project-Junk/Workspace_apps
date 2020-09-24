.class final Lcom/coloros/settings/feature/network/ColorAirplaneController$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/coloros/settings/feature/network/ColorAirplaneController;Landroid/os/Handler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$1;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/network/ColorAirplaneController$1;->a:Lcom/coloros/settings/feature/network/ColorAirplaneController;

    invoke-static {p1}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->access$000(Lcom/coloros/settings/feature/network/ColorAirplaneController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/network/ColorAirplaneController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
