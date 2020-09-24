.class Lcom/coloros/anim/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/b;->e(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/coloros/anim/b;


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;F)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/b$5;->b:Lcom/coloros/anim/b;

    iput p2, p0, Lcom/coloros/anim/b$5;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/a;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/anim/b$5;->b:Lcom/coloros/anim/b;

    iget p0, p0, Lcom/coloros/anim/b$5;->a:F

    invoke-virtual {p1, p0}, Lcom/coloros/anim/b;->e(F)V

    return-void
.end method
