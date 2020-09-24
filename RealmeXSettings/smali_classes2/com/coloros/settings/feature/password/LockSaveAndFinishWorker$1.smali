.class final Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;
.super Ljava/lang/Object;
.source "LockSaveAndFinishWorker.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a/j;

.field final synthetic b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;Lcom/coloros/settings/privacy/a/j;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->a:Lcom/coloros/settings/privacy/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[B)V
    .locals 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "match = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "change =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSaveAndFinishWorker"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->a:Lcom/coloros/settings/privacy/a/j;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    .line 122
    invoke-static {v1}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->a(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    invoke-static {v3}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->b(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 121
    invoke-virtual {v0, p2, v1, v2}, Lcom/coloros/settings/privacy/a/j;->a([BILjava/lang/String;)V

    .line 124
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->c(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker$1;->b:Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;

    .line 125
    invoke-static {v1}, Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;->d(Lcom/coloros/settings/feature/password/LockSaveAndFinishWorker;)Z

    move-result v1

    .line 124
    invoke-static {p2, v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;ZZZ)V

    return-void
.end method
