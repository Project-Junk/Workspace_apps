.class final Lcom/coloros/settings/feature/display/a$3;
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

    .line 173
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->j(Lcom/coloros/settings/feature/display/a;)Z

    move-result v0

    const-string v1, "ColorSettingsBrightnessController"

    if-nez v0, :cond_0

    const-string v0, "mUpdateModeRunnable, mAutomaticAvailable is false"

    .line 177
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->k(Lcom/coloros/settings/feature/display/a;)Z

    move-result v0

    const/4 v2, -0x2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 183
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    .line 186
    invoke-static {v7}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v0, v5

    aput-object v3, v0, v4

    .line 187
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "android.provider.Settings$System"

    const-string v3, "getIntForBrightness"

    .line 183
    invoke-static {v2, v3, v6, v0}, Lcom/coloros/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-static {v2, v4}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;Z)Z

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mUpdateModeRunnable, mAutomatic = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/display/a$3;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
