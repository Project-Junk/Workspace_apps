.class public final Lcom/coloros/settings/widget/b$d;
.super Lcom/android/sdk/a$b;
.source "SettingsSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/settings/widget/b;


# direct methods
.method protected constructor <init>(Lcom/coloros/settings/widget/b;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-direct {p0, p1}, Lcom/android/sdk/a$b;-><init>(Lcom/android/sdk/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->i(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/SettingsSeekBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SettingsSeekBarVolumizer"

    const-string v0, "handleMessage hasSetStreamMessage"

    .line 271
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    .line 1314
    iget-object v1, v0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1317
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v2, v0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 274
    :goto_0
    invoke-static {v0, v1}, Lcom/coloros/settings/widget/b;->a(Lcom/coloros/settings/widget/b;I)I

    .line 275
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/coloros/settings/widget/b;->b(Lcom/coloros/settings/widget/b;I)I

    .line 276
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->j(Lcom/coloros/settings/widget/b;)Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0, p1}, Lcom/coloros/settings/widget/b;->a(Lcom/coloros/settings/widget/b;Z)Z

    .line 279
    iget-object p1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->k(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/b$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->k(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->l(Lcom/coloros/settings/widget/b;)Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/b;->a()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/coloros/settings/widget/b$a;->a(ZZ)V

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->m(Lcom/coloros/settings/widget/b;)I

    move-result p1

    iget-object v0, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->n(Lcom/coloros/settings/widget/b;)I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 284
    iget-object p1, p0, Lcom/coloros/settings/widget/b$d;->b:Lcom/coloros/settings/widget/b;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/b;->b()V

    :cond_3
    return-void
.end method
