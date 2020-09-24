.class final Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;
.super Ljava/lang/Object;
.source "SaveLockPatternAndFinishWorker.java"

# interfaces
.implements Lcom/coloros/settings/privacy/a/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a/j;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;Lcom/coloros/settings/privacy/a/j;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->c:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->a:Lcom/coloros/settings/privacy/a/j;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[B)V
    .locals 3

    .line 150
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

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->a:Lcom/coloros/settings/privacy/a/j;

    const/high16 v1, 0x10000

    iget-object v2, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/coloros/settings/privacy/a/j;->a([BILjava/lang/String;)V

    .line 158
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->c:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker$1;->c:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    .line 159
    invoke-static {v1}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->b(Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;)Z

    move-result v1

    .line 158
    invoke-static {p2, v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;ZZZ)V

    return-void
.end method
