.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;
.super Ljava/lang/Object;
.source "ColorBalanceSeekBar.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_1

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I

    move-result v0

    if-eq p2, v0, :cond_0

    int-to-float v0, p2

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    .line 70
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    .line 71
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 72
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I

    move-result p2

    .line 73
    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "master_balance"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V

    .line 88
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    .line 62
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V

    .line 53
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
