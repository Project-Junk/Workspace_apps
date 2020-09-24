.class public Lcom/oppo/camera/debug/DebugItem;
.super Ljava/lang/Object;
.source "DebugItem.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/oppo/camera/debug/DebugItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/oppo/camera/debug/DebugItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/oppo/camera/debug/DebugItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/oppo/camera/debug/DebugItem;->mValue:Ljava/lang/String;

    return-void
.end method
