.class public Lcom/color/compat/view/TextureViewNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/view/TextureViewWrapper;->setCallBackSizeChangeWhenLayerUpdate(Landroid/view/TextureView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TextureViewNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
