.class public Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;
.super Lcom/android/systemui/SystemUI;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandQueueStart"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1230
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 1235
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v1, Lcom/coloros/systemui/common/ColorCommandQueue;

    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/systemui/common/ColorCommandQueue;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
