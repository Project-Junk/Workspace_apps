.class Lcom/oppo/camera/ui/e$5;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;F)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/oppo/camera/ui/e$5;->b:Lcom/oppo/camera/ui/e;

    iput p2, p0, Lcom/oppo/camera/ui/e$5;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/oppo/camera/ui/e$5;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/oppo/camera/ui/e$5;->b:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->l(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/preview/d;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/ui/e$5;->a:F

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/d;->a(F)V

    :cond_0
    return-void
.end method
