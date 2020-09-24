.class Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

.field final synthetic val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;->val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$3;->val$copy:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    return-void
.end method
