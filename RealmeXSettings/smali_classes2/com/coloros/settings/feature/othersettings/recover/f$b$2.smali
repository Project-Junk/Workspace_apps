.class final Lcom/coloros/settings/feature/othersettings/recover/f$b$2;
.super Ljava/util/TimerTask;
.source "RecoveryDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/f$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1137
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->f(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->e(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
