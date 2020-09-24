.class final Lcom/coloros/settings/utils/k$1;
.super Ljava/lang/Object;
.source "CustomizeRingtoneUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/k;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/coloros/settings/utils/k$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 335
    invoke-static {}, Lcom/coloros/settings/utils/k;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/utils/k;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    monitor-exit v0

    return-void

    .line 339
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/k;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/k;->a(Ljava/io/InputStream;)V

    .line 340
    invoke-static {}, Lcom/coloros/settings/utils/k;->d()V

    .line 341
    iget-object v1, p0, Lcom/coloros/settings/utils/k$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_settings_sim_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "DEFAULT"

    .line 345
    :cond_1
    invoke-static {v1}, Lcom/coloros/settings/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/coloros/settings/utils/k;->e()Z

    .line 347
    invoke-static {}, Lcom/coloros/settings/utils/k;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
