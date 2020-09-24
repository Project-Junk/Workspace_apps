.class final Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;
.super Landroid/database/ContentObserver;
.source "ScreenTemperaturePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;->a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 152
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;->a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "setting_enable_color_temperature_regulation"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$2;->a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;ZI)V

    return-void
.end method
