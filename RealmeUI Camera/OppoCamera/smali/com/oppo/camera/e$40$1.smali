.class Lcom/oppo/camera/e$40$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$40;->a(Lcom/oppo/camera/ui/control/e;Lcom/oppo/camera/Ipa/b$c;Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/control/e;

.field final synthetic b:Lcom/oppo/camera/e$40;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$40;Lcom/oppo/camera/ui/control/e;)V
    .locals 0

    .line 10650
    iput-object p1, p0, Lcom/oppo/camera/e$40$1;->b:Lcom/oppo/camera/e$40;

    iput-object p2, p0, Lcom/oppo/camera/e$40$1;->a:Lcom/oppo/camera/ui/control/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10653
    iget-object v0, p0, Lcom/oppo/camera/e$40$1;->b:Lcom/oppo/camera/e$40;

    iget-object v0, v0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10654
    iget-object v0, p0, Lcom/oppo/camera/e$40$1;->b:Lcom/oppo/camera/e$40;

    iget-object v0, v0, Lcom/oppo/camera/e$40;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$40$1;->a:Lcom/oppo/camera/ui/control/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/e;)V

    :cond_0
    return-void
.end method
