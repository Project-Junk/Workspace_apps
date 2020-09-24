.class public Lcom/coloros/systemui/qs/customize/TileAdapterExt;
.super Ljava/lang/Object;
.source "TileAdapterExt.java"


# static fields
.field private static mInstance:Lcom/coloros/systemui/qs/customize/TileAdapterExt;


# instance fields
.field private mColume:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/qs/customize/TileAdapterExt;
    .locals 1

    .line 28
    sget-object v0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->mInstance:Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/customize/TileAdapterExt;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->mInstance:Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    .line 31
    :cond_0
    sget-object v0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->mInstance:Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    return-object v0
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 39
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->mColume:I

    :cond_1
    return v0
.end method

.method public updateColume(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->mColume:I

    return-void
.end method
