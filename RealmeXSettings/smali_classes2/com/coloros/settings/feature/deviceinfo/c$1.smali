.class final Lcom/coloros/settings/feature/deviceinfo/c$1;
.super Landroid/os/Handler;
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

    .line 301
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$1;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 303
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x400

    if-eq p1, v0, :cond_1

    const/16 v0, 0x401

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$1;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/c;->a(Lcom/coloros/settings/feature/deviceinfo/c;)V

    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/c$1;->a:Lcom/coloros/settings/feature/deviceinfo/c;

    .line 1066
    invoke-virtual {p1}, Lcom/coloros/settings/feature/deviceinfo/c;->a()V

    return-void
.end method
