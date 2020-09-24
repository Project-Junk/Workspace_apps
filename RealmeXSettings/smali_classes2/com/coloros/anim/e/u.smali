.class public final Lcom/coloros/anim/e/u;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lcom/coloros/anim/e/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/af<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/anim/e/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/coloros/anim/e/u;

    invoke-direct {v0}, Lcom/coloros/anim/e/u;-><init>()V

    sput-object v0, Lcom/coloros/anim/e/u;->a:Lcom/coloros/anim/e/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    invoke-static {p1, p2}, Lcom/coloros/anim/e/o;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
