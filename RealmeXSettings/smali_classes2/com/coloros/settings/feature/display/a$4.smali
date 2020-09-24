.class final Lcom/coloros/settings/feature/display/a$4;
.super Ljava/lang/Object;
.source "ColorSettingsBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/a;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 211
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->b(Lcom/coloros/settings/feature/display/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/16 v2, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto/16 :goto_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->k(Lcom/coloros/settings/feature/display/a;)Z

    move-result v0

    const-string v3, "screen_brightness"

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 220
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    .line 223
    invoke-static {v5}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v0, v6

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    .line 224
    invoke-static {v3}, Lcom/coloros/settings/feature/display/a;->l(Lcom/coloros/settings/feature/display/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, "android.provider.Settings$System"

    const-string v3, "getIntForBrightness"

    .line 220
    invoke-static {v2, v3, v4, v0}, Lcom/coloros/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    .line 231
    invoke-static {v4}, Lcom/coloros/settings/feature/display/a;->l(Lcom/coloros/settings/feature/display/a;)I

    move-result v4

    .line 230
    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 234
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->l(Lcom/coloros/settings/feature/display/a;)I

    move-result v0

    iget-object v2, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/display/a;->m(Lcom/coloros/settings/feature/display/a;)I

    move-result v2

    sub-int v2, v0, v2

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->m(Lcom/coloros/settings/feature/display/a;)I

    move-result v0

    sub-int v0, v6, v0

    .line 237
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/display/a$4;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v3}, Lcom/coloros/settings/feature/display/a;->i(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
