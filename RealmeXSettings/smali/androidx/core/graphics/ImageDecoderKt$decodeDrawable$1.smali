.class public final Landroidx/core/graphics/ImageDecoderKt$decodeDrawable$1;
.super Ljava/lang/Object;
.source "ImageDecoder.kt"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/ImageDecoderKt;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;La/d/a/d;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:La/d/a/d;


# direct methods
.method public constructor <init>(La/d/a/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/graphics/ImageDecoderKt$decodeDrawable$1;->$action:La/d/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    const-string v0, "decoder"

    .line 50
    invoke-static {p1, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p3, p1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
