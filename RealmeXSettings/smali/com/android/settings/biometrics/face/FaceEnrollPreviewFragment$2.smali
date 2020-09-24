.class final Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;
.super Ljava/lang/Object;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->a:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->a:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->a(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->a:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p1, p2, p3}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->b(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
