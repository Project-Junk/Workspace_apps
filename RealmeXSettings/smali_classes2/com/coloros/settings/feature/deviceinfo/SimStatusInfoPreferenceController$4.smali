.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;
.super Landroid/os/Handler;
.source "SimStatusInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    .line 261
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 242
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 243
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 244
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->k(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120781

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 246
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "\""

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 248
    array-length v1, v0

    if-gtz v1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 252
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "result = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStatusInfoPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$4;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->l(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    return-void
.end method
