.class public final Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
.super Ljava/lang/Object;
.source "PrivacyItem.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItem.kt\ncom/coloros/systemui/qs/privacy/PrivacyApplication\n*L\n1#1,77:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\u0008\u0010\'\u001a\u00020\u0003H\u0016R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00038FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "",
        "packageName",
        "",
        "uid",
        "",
        "context",
        "Landroid/content/Context;",
        "(Ljava/lang/String;ILandroid/content/Context;)V",
        "applicationInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "getApplicationInfo",
        "()Landroid/content/pm/ApplicationInfo;",
        "applicationInfo$delegate",
        "Lkotlin/Lazy;",
        "applicationName",
        "getApplicationName",
        "()Ljava/lang/String;",
        "applicationName$delegate",
        "getContext",
        "()Landroid/content/Context;",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "icon$delegate",
        "getPackageName",
        "getUid",
        "()I",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final applicationInfo$delegate:Lkotlin/Lazy;

.field private final applicationName$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "applicationInfo"

    const-string v4, "getApplicationInfo()Landroid/content/pm/ApplicationInfo;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "icon"

    const-string v4, "getIcon()Landroid/graphics/drawable/Drawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "applicationName"

    const-string v4, "getApplicationName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    iput-object p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$applicationInfo$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$applicationInfo$2;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->applicationInfo$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->icon$delegate:Lkotlin/Lazy;

    .line 69
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$applicationName$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$applicationName$2;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->applicationName$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApplicationInfo$p(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;Ljava/lang/String;ILandroid/content/Context;ILjava/lang/Object;)Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->copy(Ljava/lang/String;ILandroid/content/Context;)Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    move-result-object p0

    return-object p0
.end method

.method private final getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->applicationInfo$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)I
    .locals 1
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getApplicationName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->compareTo(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)I

    move-result p0

    return p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    return p0
.end method

.method public final component3()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ILandroid/content/Context;)Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    iget v3, p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->applicationName$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->icon$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getUid()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->context:Landroid/content/Context;

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

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacyApplication(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
