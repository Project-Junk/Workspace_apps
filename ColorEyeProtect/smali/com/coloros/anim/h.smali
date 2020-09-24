.class public Lcom/coloros/anim/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/anim/h;->a:I

    iput p2, p0, Lcom/coloros/anim/h;->b:I

    iput-object p3, p0, Lcom/coloros/anim/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/anim/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/anim/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/h;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/anim/h;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method
