.class final Lcom/coloros/settings/feature/deviceinfo/c$2;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/c;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/c;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const-string v1, "cleanup"

    .line 350
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    const/4 v1, 0x0

    .line 10066
    iput-boolean v1, v0, Lcom/coloros/settings/feature/deviceinfo/c;->b:Z

    const/4 v1, 0x0

    .line 11066
    iput-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    .line 12066
    iput-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 340
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBindingDied:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/c$2;->a()V

    .line 342
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 7066
    iget p1, p1, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    const-string p1, "try to re-bind"

    .line 343
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 8066
    iget-object p1, p1, Lcom/coloros/settings/feature/deviceinfo/c;->g:Landroid/os/Handler;

    const/16 v0, 0x400

    .line 344
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 9066
    iget v1, v1, Lcom/coloros/settings/feature/deviceinfo/c;->f:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    .line 344
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 319
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-static {p2}, Lorg/a/a/f$a;->a(Landroid/os/IBinder;)Lorg/a/a/f;

    move-result-object p2

    .line 1066
    iput-object p2, p1, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 2066
    iget-object p2, p2, Lcom/coloros/settings/feature/deviceinfo/c;->c:Lorg/a/a/f;

    .line 323
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 3066
    iget-object v1, v1, Lcom/coloros/settings/feature/deviceinfo/c;->d:Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    iget-object v2, v2, Lcom/coloros/settings/feature/deviceinfo/c;->h:Lorg/a/a/g;

    invoke-interface {p2, v1, v2}, Lorg/a/a/f;->a(Ljava/lang/String;Lorg/a/a/g;)Lorg/a/a/b;

    move-result-object p2

    .line 4066
    iput-object p2, p1, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    .line 324
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    const/4 p2, 0x1

    .line 5066
    iput-boolean p2, p1, Lcom/coloros/settings/feature/deviceinfo/c;->b:Z

    .line 325
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(Lcom/coloros/settings/feature/deviceinfo/c;)V

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Client = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$2;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 6066
    iget-object p2, p2, Lcom/coloros/settings/feature/deviceinfo/c;->e:Lorg/a/a/b;

    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected: Exception = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/c$2;->a()V

    return-void
.end method
