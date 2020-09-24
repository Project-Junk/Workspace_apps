.class Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;
.super Ljava/lang/Object;
.source "ColorVolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Z)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;->val$entry:Ljava/util/Map$Entry;

    iput-boolean p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C$12;->val$show:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method
