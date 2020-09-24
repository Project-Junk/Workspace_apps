.class public Lcom/color/eyeprotect/util/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-int p1, p1

    iput p1, p0, Lcom/color/eyeprotect/util/f;->a:I

    float-to-int p1, p2

    iput p1, p0, Lcom/color/eyeprotect/util/f;->b:I

    float-to-int p1, p3

    iput p1, p0, Lcom/color/eyeprotect/util/f;->c:I

    return-void
.end method
