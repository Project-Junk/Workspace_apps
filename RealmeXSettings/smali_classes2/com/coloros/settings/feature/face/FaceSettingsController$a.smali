.class final Lcom/coloros/settings/feature/face/FaceSettingsController$a;
.super Lcom/coloros/settings/utils/be;
.source "FaceSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/face/FaceSettingsController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/os/Looper;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 840
    check-cast p2, Lcom/coloros/settings/feature/face/FaceSettingsController;

    .line 1847
    invoke-static {p2, p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/os/Message;)V

    return-void
.end method
