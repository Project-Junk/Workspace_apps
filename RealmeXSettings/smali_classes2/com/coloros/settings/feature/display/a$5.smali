.class final Lcom/coloros/settings/feature/display/a$5;
.super Landroid/os/Handler;
.source "ColorSettingsBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/a;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/display/a;->b(Lcom/coloros/settings/feature/display/a;Z)Z

    const/4 v0, 0x0

    .line 246
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->n(Lcom/coloros/settings/feature/display/a;)Lcom/color/support/widget/seekbar/ColorSeekBar;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->n(Lcom/coloros/settings/feature/display/a;)Lcom/color/support/widget/seekbar/ColorSeekBar;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, p1}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/display/a;->b(Lcom/coloros/settings/feature/display/a;Z)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/coloros/settings/feature/display/a$5;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/display/a;->b(Lcom/coloros/settings/feature/display/a;Z)Z

    .line 261
    throw p1
.end method
