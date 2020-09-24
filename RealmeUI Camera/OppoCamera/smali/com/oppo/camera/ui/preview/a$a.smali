.class Lcom/oppo/camera/ui/preview/a$a;
.super Ljava/lang/Object;
.source "AISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/a;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/oppo/camera/ui/preview/a;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a$a;->a:Lcom/oppo/camera/ui/preview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 537
    iput p1, p0, Lcom/oppo/camera/ui/preview/a$a;->b:I

    .line 538
    iput p1, p0, Lcom/oppo/camera/ui/preview/a$a;->c:I

    const/4 p1, 0x0

    .line 540
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a$a;->d:Z

    .line 541
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/ui/preview/a;Lcom/oppo/camera/ui/preview/a$1;)V
    .locals 0

    .line 536
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a$a;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/oppo/camera/ui/preview/a$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/oppo/camera/ui/preview/a$a;->b:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a$a;->d:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/oppo/camera/ui/preview/a$a;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 548
    iput p1, p0, Lcom/oppo/camera/ui/preview/a$a;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a$a;->e:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a$a;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a$a;->e:Z

    return v0
.end method
