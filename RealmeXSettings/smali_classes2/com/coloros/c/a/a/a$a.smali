.class abstract Lcom/coloros/c/a/a/a$a;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field b:Z

.field c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/coloros/c/a/a/a;


# direct methods
.method private constructor <init>(Lcom/coloros/c/a/a/a;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/coloros/c/a/a/a$a;->d:Lcom/coloros/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 542
    iput-boolean p1, p0, Lcom/coloros/c/a/a/a$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/c/a/a/a;B)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/coloros/c/a/a/a$a;-><init>(Lcom/coloros/c/a/a/a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/ComponentName;Landroid/os/IBinder;Ljava/lang/Runnable;)V
.end method

.method protected abstract a(Landroid/content/ComponentName;Ljava/lang/Runnable;)V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/coloros/c/a/a/a$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/c/a/a/a$a;->a(Landroid/content/ComponentName;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Lcom/coloros/c/a/a/a$a;->b:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/coloros/c/a/a/a$a;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/c/a/a/a$a;->a(Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 558
    iput-boolean p1, p0, Lcom/coloros/c/a/a/a$a;->b:Z

    return-void
.end method
