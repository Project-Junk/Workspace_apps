.class final Lcom/android/settings/network/ApnSettings$a;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/ApnSettings;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$a;->a:Lcom/android/settings/network/ApnSettings;

    .line 703
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 704
    iput-object p3, p0, Lcom/android/settings/network/ApnSettings$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 709
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$a;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->d(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 712
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$a;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->f()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 713
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$a;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 714
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
