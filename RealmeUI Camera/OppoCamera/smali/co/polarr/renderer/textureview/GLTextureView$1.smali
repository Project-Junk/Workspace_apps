.class Lco/polarr/renderer/textureview/GLTextureView$1;
.super Lco/polarr/renderer/render/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/polarr/renderer/textureview/GLTextureView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lco/polarr/renderer/textureview/GLTextureView;


# direct methods
.method constructor <init>(Lco/polarr/renderer/textureview/GLTextureView;Lco/polarr/renderer/render/b;)V
    .locals 0

    iput-object p1, p0, Lco/polarr/renderer/textureview/GLTextureView$1;->c:Lco/polarr/renderer/textureview/GLTextureView;

    invoke-direct {p0, p2}, Lco/polarr/renderer/render/d;-><init>(Lco/polarr/renderer/render/b;)V

    return-void
.end method


# virtual methods
.method protected b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lco/polarr/renderer/textureview/GLTextureView$1;->c:Lco/polarr/renderer/textureview/GLTextureView;

    invoke-virtual {v0}, Lco/polarr/renderer/textureview/GLTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
