.class public Lcom/coloros/anim/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/aj<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/anim/e/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/anim/e/x;

    invoke-direct {v0}, Lcom/coloros/anim/e/x;-><init>()V

    sput-object v0, Lcom/coloros/anim/e/x;->a:Lcom/coloros/anim/e/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1, p2}, Lcom/coloros/anim/e/q;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/e/x;->a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
