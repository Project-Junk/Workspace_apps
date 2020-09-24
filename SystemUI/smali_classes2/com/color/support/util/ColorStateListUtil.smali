.class public Lcom/color/support/util/ColorStateListUtil;
.super Ljava/lang/Object;
.source "ColorStateListUtil.java"


# static fields
.field private static final EMPTY_STATE_SET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [I

    sput-object v0, Lcom/color/support/util/ColorStateListUtil;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x2

    .line 38
    new-array v1, v0, [[I

    .line 39
    new-array v0, v0, [I

    const/4 v2, 0x1

    .line 41
    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    aput-object v3, v1, v4

    aput p1, v0, v4

    .line 44
    sget-object p1, Lcom/color/support/util/ColorStateListUtil;->EMPTY_STATE_SET:[I

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 47
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x4

    .line 60
    new-array v1, v0, [[I

    .line 61
    new-array v0, v0, [I

    const/4 v2, 0x1

    .line 63
    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    aput-object v3, v1, v4

    aput p1, v0, v4

    const/4 p1, 0x2

    .line 66
    new-array v3, p1, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    aput p2, v0, v2

    .line 69
    new-array p2, p1, [I

    fill-array-data p2, :array_1

    aput-object p2, v1, p1

    aput p3, v0, p1

    .line 72
    sget-object p1, Lcom/color/support/util/ColorStateListUtil;->EMPTY_STATE_SET:[I

    const/4 p2, 0x3

    aput-object p1, v1, p2

    aput p0, v0, p2

    .line 75
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method
