.class final Lcom/coloros/settings/feature/display/nightmode/a$a;
.super Landroid/database/ContentObserver;
.source "ProEyesColorTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/nightmode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/nightmode/a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/display/nightmode/a;Landroid/os/Handler;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    .line 225
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/a;->b(Lcom/coloros/settings/feature/display/nightmode/a;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/coloros/settings/feature/display/nightmode/a;->c()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/a;->b(Lcom/coloros/settings/feature/display/nightmode/a;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/display/nightmode/a$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 239
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/settings/feature/display/nightmode/a;->a(Lcom/coloros/settings/feature/display/nightmode/a;Z)Z

    .line 240
    iget-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/nightmode/a;->a(Lcom/coloros/settings/feature/display/nightmode/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_0
    iget-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/display/nightmode/a;->a(Lcom/coloros/settings/feature/display/nightmode/a;Z)Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "ProEyesColorTemperatureController"

    const-string v1, "ProEyesObserver onChange"

    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/a$a;->a:Lcom/coloros/settings/feature/display/nightmode/a;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/nightmode/a;->a(Lcom/coloros/settings/feature/display/nightmode/a;Z)Z

    .line 245
    throw p2
.end method
