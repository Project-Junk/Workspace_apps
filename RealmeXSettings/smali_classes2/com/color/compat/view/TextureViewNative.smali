.class public Lcom/color/compat/view/TextureViewNative;
.super Ljava/lang/Object;
.source "TextureViewNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 32
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/view/TextureViewWrapper;->setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextureViewNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
