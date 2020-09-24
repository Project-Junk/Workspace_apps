.class final Lcom/coloros/partners/dolby/a$3;
.super Ljava/lang/Object;
.source "DolbyServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/partners/dolby/a;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/a;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/coloros/partners/dolby/a$3;->a:Lcom/coloros/partners/dolby/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/coloros/partners/dolby/a$3;->a:Lcom/coloros/partners/dolby/a;

    invoke-static {p1, p2}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/ComponentName;)V

    return-void
.end method
