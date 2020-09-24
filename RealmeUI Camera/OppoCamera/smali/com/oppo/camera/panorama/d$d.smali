.class public Lcom/oppo/camera/panorama/d$d;
.super Ljava/lang/Object;
.source "FNPanoramaProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/panorama/d;

.field private b:J

.field private c:I

.field private d:[I

.field private e:[B


# direct methods
.method public constructor <init>(Lcom/oppo/camera/panorama/d;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/oppo/camera/panorama/d$d;->a:Lcom/oppo/camera/panorama/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lcom/oppo/camera/panorama/d$d;->b:J

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/oppo/camera/panorama/d$d;->c:I

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/oppo/camera/panorama/d$d;->d:[I

    .line 121
    iput-object p1, p0, Lcom/oppo/camera/panorama/d$d;->e:[B

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/oppo/camera/panorama/d$d;->b:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/oppo/camera/panorama/d$d;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/oppo/camera/panorama/d$d;->b:J

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/oppo/camera/panorama/d$d;->e:[B

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oppo/camera/panorama/d$d;->d:[I

    return-void
.end method

.method public b()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/oppo/camera/panorama/d$d;->c:I

    return v0
.end method

.method public c()[I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oppo/camera/panorama/d$d;->d:[I

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/panorama/d$d;->e:[B

    return-object v0
.end method
