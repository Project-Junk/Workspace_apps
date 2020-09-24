.class public Lcom/coloros/anim/e/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/aj<",
        "Lcom/coloros/anim/g/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/anim/e/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/anim/e/ac;

    invoke-direct {v0}, Lcom/coloros/anim/e/ac;-><init>()V

    sput-object v0, Lcom/coloros/anim/e/ac;->a:Lcom/coloros/anim/e/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/coloros/anim/g/d;
    .locals 3

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_3
    new-instance p0, Lcom/coloros/anim/g/d;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/coloros/anim/g/d;-><init>(FF)V

    return-object p0
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/e/ac;->a(Landroid/util/JsonReader;F)Lcom/coloros/anim/g/d;

    move-result-object p0

    return-object p0
.end method
