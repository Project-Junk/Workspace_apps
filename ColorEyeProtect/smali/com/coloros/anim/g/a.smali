.class public Lcom/coloros/anim/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/coloros/anim/g/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/coloros/anim/g/a<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/coloros/anim/g/a;->a:F

    iput p2, p0, Lcom/coloros/anim/g/a;->b:F

    iput-object p3, p0, Lcom/coloros/anim/g/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/coloros/anim/g/a;->d:Ljava/lang/Object;

    iput p5, p0, Lcom/coloros/anim/g/a;->e:F

    iput p6, p0, Lcom/coloros/anim/g/a;->f:F

    iput p7, p0, Lcom/coloros/anim/g/a;->g:F

    return-object p0
.end method
