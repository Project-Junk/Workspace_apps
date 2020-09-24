.class final Lcom/coloros/settings/feature/display/a$1;
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

    .line 146
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a$1;->a:Lcom/coloros/settings/feature/display/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$1;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->h(Lcom/coloros/settings/feature/display/a;)Lcom/coloros/settings/feature/display/a$a;

    move-result-object v0

    .line 1123
    iget-object v1, v0, Lcom/coloros/settings/feature/display/a$a;->d:Lcom/coloros/settings/feature/display/a;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/a;->f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1124
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1125
    iget-object v2, v0, Lcom/coloros/settings/feature/display/a$a;->a:Landroid/net/Uri;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1128
    iget-object v2, v0, Lcom/coloros/settings/feature/display/a$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1131
    iget-object v2, v0, Lcom/coloros/settings/feature/display/a$a;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$1;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->c(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$1;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a$1;->a:Lcom/coloros/settings/feature/display/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/a;->i(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
