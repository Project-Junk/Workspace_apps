.class public Lcom/coloros/anim/parser/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"

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
.field public static final INSTANCE:Lcom/coloros/anim/parser/IntegerParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/coloros/anim/parser/IntegerParser;

    invoke-direct {v0}, Lcom/coloros/anim/parser/IntegerParser;-><init>()V

    sput-object v0, Lcom/coloros/anim/parser/IntegerParser;->INSTANCE:Lcom/coloros/anim/parser/IntegerParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/coloros/anim/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

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

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/parser/IntegerParser;->parse(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
