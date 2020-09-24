.class Lcom/oppo/camera/Ipa/ImageProcessService$b$a;
.super Ljava/lang/Object;
.source "ImageProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/ImageProcessService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field final synthetic e:Lcom/oppo/camera/Ipa/ImageProcessService$b;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->e:Lcom/oppo/camera/Ipa/ImageProcessService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1088
    iput p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    .line 1089
    iput p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->b:I

    const/4 p1, 0x0

    .line 1090
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    .line 1091
    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/ImageProcessService$1;)V
    .locals 0

    .line 1087
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;-><init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BurstShotParameter info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mCount: "

    .line 1096
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mCshotPath: "

    .line 1097
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mBurstShotNum: "

    .line 1098
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
