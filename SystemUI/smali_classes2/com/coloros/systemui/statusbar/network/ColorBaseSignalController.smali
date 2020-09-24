.class public Lcom/coloros/systemui/statusbar/network/ColorBaseSignalController;
.super Ljava/lang/Object;
.source "ColorBaseSignalController.java"


# instance fields
.field private mSimSlotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/coloros/systemui/statusbar/network/ColorBaseSignalController;->mSimSlotIndex:I

    return-void
.end method


# virtual methods
.method public getSimSlotIndex()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/coloros/systemui/statusbar/network/ColorBaseSignalController;->mSimSlotIndex:I

    return p0
.end method

.method public setSimSlotIndex(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/coloros/systemui/statusbar/network/ColorBaseSignalController;->mSimSlotIndex:I

    return-void
.end method
