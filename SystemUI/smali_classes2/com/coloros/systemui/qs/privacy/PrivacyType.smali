.class public final enum Lcom/coloros/systemui/qs/privacy/PrivacyType;
.super Ljava/lang/Enum;
.source "PrivacyItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u000f0\u000f2\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyType;",
        "",
        "nameId",
        "",
        "iconId",
        "(Ljava/lang/String;III)V",
        "getIconId",
        "()I",
        "getNameId",
        "getIcon",
        "Landroid/graphics/drawable/Drawable;",
        "kotlin.jvm.PlatformType",
        "context",
        "Landroid/content/Context;",
        "getName",
        "",
        "TYPE_CAMERA",
        "TYPE_MICROPHONE",
        "TYPE_LOCATION",
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
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/qs/privacy/PrivacyType;

.field public static final enum TYPE_CAMERA:Lcom/coloros/systemui/qs/privacy/PrivacyType;

.field public static final enum TYPE_LOCATION:Lcom/coloros/systemui/qs/privacy/PrivacyType;

.field public static final enum TYPE_MICROPHONE:Lcom/coloros/systemui/qs/privacy/PrivacyType;


# instance fields
.field private final iconId:I

.field private final nameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coloros/systemui/qs/privacy/PrivacyType;

    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    const/4 v2, 0x0

    const-string v3, "TYPE_CAMERA"

    const v4, 0x7f11068d

    const v5, 0x7f080f42

    .line 28
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/coloros/systemui/qs/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_CAMERA:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    const/4 v2, 0x1

    const-string v3, "TYPE_MICROPHONE"

    const v4, 0x7f11068f

    const v5, 0x7f080f77

    .line 29
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/coloros/systemui/qs/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    const/4 v2, 0x2

    const-string v3, "TYPE_LOCATION"

    const v4, 0x7f11068e

    const v5, 0x7f080f74

    .line 30
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/coloros/systemui/qs/privacy/PrivacyType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_LOCATION:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->$VALUES:[Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->nameId:I

    iput p4, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->iconId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .locals 1

    const-class v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/qs/privacy/PrivacyType;
    .locals 1

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->$VALUES:[Lcom/coloros/systemui/qs/privacy/PrivacyType;

    invoke-virtual {v0}, [Lcom/coloros/systemui/qs/privacy/PrivacyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/qs/privacy/PrivacyType;

    return-object v0
.end method


# virtual methods
.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->iconId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getIconId()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->iconId:I

    return p0
.end method

.method public final getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->nameId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameId()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->nameId:I

    return p0
.end method
