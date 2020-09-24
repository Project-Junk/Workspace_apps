.class public Lcom/oppo/camera/a/a$a;
.super Ljava/lang/Object;
.source "ApsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field public i:Landroid/hardware/camera2/TotalCaptureResult;

.field public j:Landroid/media/ImageReader;

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/oppo/camera/a/a$a;->a:I

    const/4 v1, 0x0

    .line 909
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->b:[I

    .line 910
    iput v0, p0, Lcom/oppo/camera/a/a$a;->c:I

    .line 911
    iput v0, p0, Lcom/oppo/camera/a/a$a;->d:I

    .line 912
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->e:Ljava/lang/String;

    .line 913
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->f:Ljava/lang/String;

    .line 914
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->g:[Ljava/lang/String;

    .line 915
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 916
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->i:Landroid/hardware/camera2/TotalCaptureResult;

    .line 917
    iput-object v1, p0, Lcom/oppo/camera/a/a$a;->j:Landroid/media/ImageReader;

    .line 918
    iput v0, p0, Lcom/oppo/camera/a/a$a;->k:I

    return-void
.end method
