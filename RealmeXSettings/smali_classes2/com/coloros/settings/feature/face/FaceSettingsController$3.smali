.class final Lcom/coloros/settings/feature/face/FaceSettingsController$3;
.super Ljava/lang/Object;
.source "FaceSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$3;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$3;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b(Lcom/coloros/settings/feature/face/FaceSettingsController;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Lcom/coloros/settings/feature/face/FaceSettingsController;Ljava/util/List;)V

    return-void
.end method
