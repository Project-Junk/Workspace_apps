.class public final Lcom/coloros/anim/c/e;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:D

.field private final c:C

.field private final d:D

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/c/b/n;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/coloros/anim/c/e;->a:Ljava/util/List;

    .line 19
    iput-char p2, p0, Lcom/coloros/anim/c/e;->c:C

    .line 20
    iput-wide p3, p0, Lcom/coloros/anim/c/e;->d:D

    .line 21
    iput-wide p5, p0, Lcom/coloros/anim/c/e;->b:D

    .line 22
    iput-object p7, p0, Lcom/coloros/anim/c/e;->e:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/coloros/anim/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    add-int/lit8 p0, p0, 0x0

    mul-int/lit8 p0, p0, 0x1f

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    .line 52
    iget-char v0, p0, Lcom/coloros/anim/c/e;->c:C

    iget-object v1, p0, Lcom/coloros/anim/c/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/anim/c/e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coloros/anim/c/e;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
