.class final Lcom/android/settings/wifi/tether/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 365
    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->b()Z

    move-result p1

    const-string v0, "TetherService"

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Got provision result "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->a()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "com.android.internal.R.string.config_mobile_hotspot_provision_response"

    .line 367
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 366
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 370
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->a(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 371
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected provision response "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->c(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->b(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->d(Lcom/android/settings/wifi/tether/TetherService;)Z

    const/4 v0, 0x0

    const-string v1, "EntitlementResult"

    .line 376
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->f(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->g(Lcom/android/settings/wifi/tether/TetherService;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/TetherService;->e(Lcom/android/settings/wifi/tether/TetherService;)V

    .line 390
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->a(Lcom/android/settings/wifi/tether/TetherService;II)V

    .line 392
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->h(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/TetherService;->c(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_6

    .line 394
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p1}, Lcom/android/settings/wifi/tether/TetherService;->stopSelf()V

    return-void

    .line 397
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$2;->a:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->b(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->a(Lcom/android/settings/wifi/tether/TetherService;I)V

    :cond_7
    return-void
.end method
