.class final Lcom/coloros/settings/feature/deviceinfo/c$3;
.super Lorg/a/a/h;
.source "FiveGServiceClient.java"


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

    .line 359
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$3;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-direct {p0}, Lorg/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on5gConfigInfo token = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrConfigType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8061
    iget p2, p3, Lorg/a/a/l;->a:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 380
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$3;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->b(I)Lcom/coloros/settings/feature/deviceinfo/c$a;

    move-result-object p2

    .line 9054
    iget p3, p4, Lorg/a/a/i;->a:I

    .line 9094
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->b:I

    .line 382
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$3;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(Lcom/coloros/settings/feature/deviceinfo/c;I)V

    :cond_0
    return-void
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSignalStrength token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " signalStrength="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget p2, p3, Lorg/a/a/l;->a:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    if-eqz p4, :cond_4

    .line 368
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$3;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->b(I)Lcom/coloros/settings/feature/deviceinfo/c$a;

    move-result-object p2

    .line 1073
    iget p4, p4, Lorg/a/a/k;->a:I

    const v0, 0x7fffffff

    if-ne p4, v0, :cond_0

    const/4 p3, 0x0

    .line 3094
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, -0x5f

    if-lt p4, v0, :cond_1

    const/4 p3, 0x4

    .line 4094
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    goto :goto_0

    :cond_1
    const/16 v0, -0x69

    if-lt p4, v0, :cond_2

    const/4 p3, 0x3

    .line 5094
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    goto :goto_0

    :cond_2
    const/16 v0, -0x73

    if-lt p4, v0, :cond_3

    const/4 p3, 0x2

    .line 6094
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    goto :goto_0

    .line 7094
    :cond_3
    iput p3, p2, Lcom/coloros/settings/feature/deviceinfo/c$a;->a:I

    .line 370
    :goto_0
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/c$3;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(Lcom/coloros/settings/feature/deviceinfo/c;I)V

    :cond_4
    return-void
.end method
