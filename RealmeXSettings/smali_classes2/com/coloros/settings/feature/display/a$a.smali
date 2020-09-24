.class final Lcom/coloros/settings/feature/display/a$a;
.super Landroid/database/ContentObserver;
.source "ColorSettingsBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field final c:Landroid/net/Uri;

.field final synthetic d:Lcom/coloros/settings/feature/display/a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/display/a;Landroid/os/Handler;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    .line 92
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "screen_brightness_mode"

    .line 85
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->a:Landroid/net/Uri;

    const-string p1, "screen_brightness"

    .line 87
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->b:Landroid/net/Uri;

    const-string p1, "screen_auto_brightness_adj"

    .line 89
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->c:Landroid/net/Uri;

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->g(Lcom/coloros/settings/feature/display/a;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/a$a;)V
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2138
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic lambda$nnmIeWK2jz9J_sDfUfDo9PfLXdU(Lcom/coloros/settings/feature/display/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/a$a;->a()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/display/a$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessObserver onChange, selfChange = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorSettingsBrightnessController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->b(Lcom/coloros/settings/feature/display/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1142
    new-instance p1, Lcom/coloros/settings/feature/display/-$$Lambda$a$a$nnmIeWK2jz9J_sDfUfDo9PfLXdU;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/display/-$$Lambda$a$a$nnmIeWK2jz9J_sDfUfDo9PfLXdU;-><init>(Lcom/coloros/settings/feature/display/a$a;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->c(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->a(Lcom/coloros/settings/feature/display/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->c(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/a;->d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/a;->e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
