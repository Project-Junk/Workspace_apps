.class final Lcom/coloros/anim/b$12;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/coloros/anim/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/anim/b;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/anim/b;


# direct methods
.method constructor <init>(Lcom/coloros/anim/b;I)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/coloros/anim/b$12;->b:Lcom/coloros/anim/b;

    iput p2, p0, Lcom/coloros/anim/b$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/coloros/anim/b$12;->b:Lcom/coloros/anim/b;

    iget v1, p0, Lcom/coloros/anim/b$12;->a:I

    invoke-virtual {v0, v1}, Lcom/coloros/anim/b;->b(I)V

    return-void
.end method