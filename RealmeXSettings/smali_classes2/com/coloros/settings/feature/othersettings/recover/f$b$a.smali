.class public final Lcom/coloros/settings/feature/othersettings/recover/f$b$a;
.super Landroid/os/Handler;
.source "RecoveryDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/f$b;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1174
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1176
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f$d;->a(Z)V

    .line 1178
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 1180
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->g(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1182
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f$d;->a(Z)V

    .line 1186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->b(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->c(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1188
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$a;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z

    .line 1190
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
