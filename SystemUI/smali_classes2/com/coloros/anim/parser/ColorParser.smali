.class public Lcom/coloros/anim/parser/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements Lcom/coloros/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/parser/ValueParser<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/anim/parser/ColorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/coloros/anim/parser/ColorParser;

    invoke-direct {v0}, Lcom/coloros/anim/parser/ColorParser;-><init>()V

    sput-object v0, Lcom/coloros/anim/parser/ColorParser;->INSTANCE:Lcom/coloros/anim/parser/ColorParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object p2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    .line 23
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    .line 24
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v2, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v4, p0

    if-gtz p2, :cond_3

    cmpg-double p0, v6, p0

    if-gtz p0, :cond_3

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    mul-double/2addr v6, p0

    :cond_3
    double-to-int p0, v6

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    .line 36
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/parser/ColorParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
