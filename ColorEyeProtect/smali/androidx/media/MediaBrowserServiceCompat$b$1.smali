.class Landroidx/media/MediaBrowserServiceCompat$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$b;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$b;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$b$1;->a:Landroidx/media/MediaBrowserServiceCompat$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$b$1;->a:Landroidx/media/MediaBrowserServiceCompat$b;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$b;->i:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/b/a;

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$b$1;->a:Landroidx/media/MediaBrowserServiceCompat$b;

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$b;->f:Landroidx/media/MediaBrowserServiceCompat$e;

    invoke-interface {p0}, Landroidx/media/MediaBrowserServiceCompat$e;->a()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
