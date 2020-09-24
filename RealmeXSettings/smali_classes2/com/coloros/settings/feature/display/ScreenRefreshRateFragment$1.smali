.class final Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;
.super Landroid/database/ContentObserver;
.source "ScreenRefreshRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;Landroid/os/Handler;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 181
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sys_force_60Hz"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 182
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->a(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$1;->a:Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;->b(Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;I)V

    return-void
.end method
