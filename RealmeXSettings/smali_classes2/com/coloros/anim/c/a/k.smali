.class public final Lcom/coloros/anim/c/a/k;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# instance fields
.field public final a:Lcom/coloros/anim/c/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/coloros/anim/c/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/coloros/anim/c/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/a;Lcom/coloros/anim/c/a/b;Lcom/coloros/anim/c/a/b;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/c/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/coloros/anim/c/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/coloros/anim/c/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/coloros/anim/c/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/coloros/anim/c/a/k;->a:Lcom/coloros/anim/c/a/a;

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/c/a/k;->b:Lcom/coloros/anim/c/a/a;

    .line 21
    iput-object p3, p0, Lcom/coloros/anim/c/a/k;->c:Lcom/coloros/anim/c/a/b;

    .line 22
    iput-object p4, p0, Lcom/coloros/anim/c/a/k;->d:Lcom/coloros/anim/c/a/b;

    return-void
.end method