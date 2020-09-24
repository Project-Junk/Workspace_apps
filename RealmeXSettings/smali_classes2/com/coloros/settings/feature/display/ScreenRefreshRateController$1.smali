.class final Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;
.super Landroid/database/ContentObserver;
.source "ScreenRefreshRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/ScreenRefreshRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/ScreenRefreshRateController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;Landroid/os/Handler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateController$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateController;->a(Lcom/coloros/settings/feature/display/ScreenRefreshRateController;Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    :cond_0
    return-void
.end method
