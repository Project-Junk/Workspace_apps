.class final Lcom/android/settingslib/q/b$b;
.super Landroid/os/Handler;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/q/b;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/q/b;Landroid/os/Looper;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/android/settingslib/q/b$b;->a:Lcom/android/settingslib/q/b;

    .line 354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/q/b;Landroid/os/Looper;B)V
    .locals 0

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/q/b$b;-><init>(Lcom/android/settingslib/q/b;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/q/b$b;->a:Lcom/android/settingslib/q/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Lcom/android/settingslib/q/b;->a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;)V

    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/q/b$b;->a:Lcom/android/settingslib/q/b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$Token;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/q/b;->a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;I)V

    return-void

    .line 361
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/q/b$b;->a:Lcom/android/settingslib/q/b;

    invoke-static {p1}, Lcom/android/settingslib/q/b;->c(Lcom/android/settingslib/q/b;)Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/q/b;->a(Ljava/util/List;)V

    return-void
.end method
