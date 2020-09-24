.class public final Lcom/coloros/systemui/qs/privacy/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
        "",
        "privacyType",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        "application",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V",
        "getApplication",
        "()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "getPrivacyType",
        "()Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "privacyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    iput-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    return-void
.end method

.method public static synthetic copy$default(Lcom/coloros/systemui/qs/privacy/PrivacyItem;Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;ILjava/lang/Object;)Lcom/coloros/systemui/qs/privacy/PrivacyItem;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->copy(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-object p0
.end method

.method public final component2()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    return-object p0
.end method

.method public final copy(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)Lcom/coloros/systemui/qs/privacy/PrivacyItem;
    .locals 0
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "privacyType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "application"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    iget-object v1, p1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    iget-object p1, p1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getApplication()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    return-object p0
.end method

.method public final getPrivacyType()Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyItem(privacyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->privacyType:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", application="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->application:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
