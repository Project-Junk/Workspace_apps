.class Lcom/oppo/camera/gl/i$a;
.super Lcom/oppo/camera/gl/i$b;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1164
    invoke-direct {p0, p1}, Lcom/oppo/camera/gl/i$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/oppo/camera/gl/i$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/gl/i$a;->a:I

    .line 1170
    invoke-static {}, Lcom/oppo/camera/gl/i;->i()V

    return-void
.end method
