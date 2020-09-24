.class final Lcom/coloros/c/a/a/a$5;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/coloros/c/a/a/a$5;->a:Lcom/coloros/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "FindPhoneLogoutControl"

    const-string v1, "find phone service is dead! with binderDied"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/coloros/c/a/a/a$5;->a:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->k(Lcom/coloros/c/a/a/a;)V

    .line 310
    iget-object v0, p0, Lcom/coloros/c/a/a/a$5;->a:Lcom/coloros/c/a/a/a;

    invoke-static {v0}, Lcom/coloros/c/a/a/a;->j(Lcom/coloros/c/a/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/content/Context;)V

    return-void
.end method
