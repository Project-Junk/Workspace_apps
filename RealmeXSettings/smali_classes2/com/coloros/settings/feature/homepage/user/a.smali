.class public final Lcom/coloros/settings/feature/homepage/user/a;
.super Ljava/lang/Object;
.source "UserCenterProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/user/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/homepage/user/a$a;

.field b:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 63
    new-instance p1, Lcom/coloros/settings/feature/homepage/user/a$1;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/user/a$1;-><init>(Lcom/coloros/settings/feature/homepage/user/a;Landroid/os/Messenger;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    if-eqz v0, :cond_1

    .line 79
    iget-boolean v0, v0, Lcom/coloros/settings/feature/homepage/user/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/a;->a:Lcom/coloros/settings/feature/homepage/user/a$a;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/homepage/user/a$a;->a(Ljava/lang/Integer;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
