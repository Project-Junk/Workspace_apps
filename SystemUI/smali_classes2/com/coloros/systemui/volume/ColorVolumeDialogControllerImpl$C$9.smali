.class Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$9;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onShowSilentHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$9;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$9;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1017
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$9;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;->onShowSilentHint()V

    return-void
.end method
