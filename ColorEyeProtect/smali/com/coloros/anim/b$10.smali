.class Lcom/coloros/anim/b$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/anim/b;


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/anim/b$10;->b:Lcom/coloros/anim/b;

    iput-object p2, p0, Lcom/coloros/anim/b$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/anim/a;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/anim/b$10;->b:Lcom/coloros/anim/b;

    iget-object p0, p0, Lcom/coloros/anim/b$10;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/b;->b(Ljava/lang/String;)V

    return-void
.end method
