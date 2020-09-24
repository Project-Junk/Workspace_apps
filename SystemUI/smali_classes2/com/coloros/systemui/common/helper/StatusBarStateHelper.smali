.class public Lcom/coloros/systemui/common/helper/StatusBarStateHelper;
.super Ljava/lang/Object;
.source "StatusBarStateHelper.java"


# static fields
.field private static sBarState:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBarState()I
    .locals 1

    .line 27
    sget v0, Lcom/coloros/systemui/common/helper/StatusBarStateHelper;->sBarState:I

    return v0
.end method

.method public static setBarState(I)V
    .locals 0

    .line 23
    sput p0, Lcom/coloros/systemui/common/helper/StatusBarStateHelper;->sBarState:I

    return-void
.end method
