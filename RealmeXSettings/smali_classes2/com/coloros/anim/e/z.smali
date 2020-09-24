.class public final Lcom/coloros/anim/e/z;
.super Ljava/lang/Object;
.source "ScaleXYParser.java"

# interfaces
.implements Lcom/coloros/anim/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/af<",
        "Lcom/coloros/anim/g/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/anim/e/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/coloros/anim/e/z;

    invoke-direct {v0}, Lcom/coloros/anim/e/z;-><init>()V

    sput-object v0, Lcom/coloros/anim/e/z;->a:Lcom/coloros/anim/e/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1020
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 1022
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 1023
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1024
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1028
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 1030
    :cond_3
    new-instance p1, Lcom/coloros/anim/g/d;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    div-float/2addr v2, v0

    mul-float/2addr v2, p2

    invoke-direct {p1, v1, v2}, Lcom/coloros/anim/g/d;-><init>(FF)V

    return-object p1
.end method
