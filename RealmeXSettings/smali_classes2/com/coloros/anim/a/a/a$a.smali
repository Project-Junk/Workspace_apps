.class final Lcom/coloros/anim/a/a/a$a;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/coloros/anim/a/a/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coloros/anim/a/a/s;)V
    .locals 1
    .param p1    # Lcom/coloros/anim/a/a/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/a/a/a$a;->a:Ljava/util/List;

    .line 340
    iput-object p1, p0, Lcom/coloros/anim/a/a/a$a;->b:Lcom/coloros/anim/a/a/s;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/anim/a/a/s;B)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/coloros/anim/a/a/a$a;-><init>(Lcom/coloros/anim/a/a/s;)V

    return-void
.end method
