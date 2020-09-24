.class final Lcom/coloros/settings/feature/othersettings/recover/f$b$1;
.super Ljava/lang/Object;
.source "RecoveryDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1108
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->b(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->c(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1115
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->d(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Z

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$b$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a(Lcom/coloros/settings/feature/othersettings/recover/f$b;)Lcom/coloros/settings/feature/othersettings/recover/f$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/settings/feature/othersettings/recover/f$d;->a()V

    :cond_1
    return-void
.end method
