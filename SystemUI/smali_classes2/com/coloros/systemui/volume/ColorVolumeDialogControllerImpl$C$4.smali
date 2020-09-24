.class Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

.field final synthetic val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iput p4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$4;->val$stream:I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V

    return-void
.end method
