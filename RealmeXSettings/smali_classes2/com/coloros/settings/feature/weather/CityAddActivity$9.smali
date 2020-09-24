.class final Lcom/coloros/settings/feature/weather/CityAddActivity$9;
.super Ljava/lang/Object;
.source "CityAddActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

.field final synthetic b:Lcom/coloros/settings/feature/weather/CityAddActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->a:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 569
    invoke-static {}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->a:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/weather/module/city/d;->a(Landroid/content/Context;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CityAddActivity"

    const-string v2, "send MSG_UPDATE_RESIDENT_CITY"

    .line 573
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 575
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 576
    iput v2, v1, Landroid/os/Message;->what:I

    .line 577
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->a:Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity$9;->b:Lcom/coloros/settings/feature/weather/CityAddActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/coloros/settings/feature/weather/a/e;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, "CityAddActivity"

    const-string v2, "insert city error."

    .line 581
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
