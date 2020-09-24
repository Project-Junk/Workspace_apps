.class final Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
.super Ljava/lang/Object;
.source "QSHeaderInfoLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSHeaderInfoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Location"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0010J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;",
        "",
        "left",
        "",
        "right",
        "(II)V",
        "getLeft",
        "()I",
        "setLeft",
        "(I)V",
        "getRight",
        "setRight",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "setLocationFromOffset",
        "",
        "parentWidth",
        "offset",
        "width",
        "RTL",
        "toString",
        "",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private left:I

.field private right:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;IIILjava/lang/Object;)Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->copy(II)Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return p0
.end method

.method public final copy(II)Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    iget v3, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    iget p1, p1, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    if-ne p0, p1, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getLeft()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    return p0
.end method

.method public final getRight()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLeft(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    return-void
.end method

.method public final setLocationFromOffset(IIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    sub-int/2addr p1, p2

    sub-int p2, p1, p3

    .line 123
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    goto :goto_0

    .line 126
    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    add-int/2addr p2, p3

    .line 127
    iput p2, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    :goto_0
    return-void
.end method

.method public final setRight(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/QSHeaderInfoLayout$Location;->right:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
