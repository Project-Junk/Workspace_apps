.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/Map$Entry;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$0:Ljava/util/Map$Entry;

    iput-boolean p2, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$1:Z

    iput-object p3, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$0:Ljava/util/Map$Entry;

    iget-boolean v1, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$1:Z

    iget-object p0, p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogControllerImpl$C$3pbguqOurXgYHL3AKStr58b9FcU;->f$2:Ljava/lang/Boolean;

    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->lambda$onCaptionComponentStateChanged$0(Ljava/util/Map$Entry;ZLjava/lang/Boolean;)V

    return-void
.end method
