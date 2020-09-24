.class public final Lcom/coloros/anim/h;
.super Ljava/lang/Object;
.source "EffectiveImageAsset.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/coloros/anim/h;->d:I

    .line 24
    iput p2, p0, Lcom/coloros/anim/h;->e:I

    .line 25
    iput-object p3, p0, Lcom/coloros/anim/h;->a:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/coloros/anim/h;->b:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/coloros/anim/h;->f:Ljava/lang/String;

    return-void
.end method
