.class final Lcom/coloros/partners/dolby/a$2;
.super Ljava/lang/Object;
.source "DolbyServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dolby/a;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/a;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/coloros/partners/dolby/a$2;->a:Lcom/coloros/partners/dolby/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "DolbyServiceManager"

    const-string v1, "binderDied."

    .line 86
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/coloros/partners/dolby/a$2;->a:Lcom/coloros/partners/dolby/a;

    invoke-static {v0}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a;)Lcom/oppo/a/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coloros/partners/dolby/a$2;->a:Lcom/coloros/partners/dolby/a;

    invoke-static {v0}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a;)Lcom/oppo/a/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/a/b/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/partners/dolby/a$2;->a:Lcom/coloros/partners/dolby/a;

    invoke-static {v1}, Lcom/coloros/partners/dolby/a;->b(Lcom/coloros/partners/dolby/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 89
    iget-object v0, p0, Lcom/coloros/partners/dolby/a$2;->a:Lcom/coloros/partners/dolby/a;

    invoke-static {v0}, Lcom/coloros/partners/dolby/a;->c(Lcom/coloros/partners/dolby/a;)Lcom/oppo/a/b/a/b;

    :cond_0
    return-void
.end method
