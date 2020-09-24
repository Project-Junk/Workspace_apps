.class public final Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "ColorVolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/ColorVolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:I

.field public remoteLabel:Ljava/lang/String;

.field public routedToBluetooth:Z

.field public routedToWired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
    .locals 2

    .line 90
    new-instance v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;-><init>()V

    .line 91
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    .line 92
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    .line 93
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    .line 94
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    .line 95
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    .line 96
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muteSupported:Z

    .line 97
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    .line 98
    iget-object v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 99
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    iput-boolean p0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    return-object v0
.end method
