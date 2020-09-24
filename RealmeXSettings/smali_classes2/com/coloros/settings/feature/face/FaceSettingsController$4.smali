.class final Lcom/coloros/settings/feature/face/FaceSettingsController$4;
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

    .line 322
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$4;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$4;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c(Lcom/coloros/settings/feature/face/FaceSettingsController;)Lcom/coloros/settings/feature/c/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$4;->a:Lcom/coloros/settings/feature/face/FaceSettingsController;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c(Lcom/coloros/settings/feature/face/FaceSettingsController;)Lcom/coloros/settings/feature/c/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/settings/feature/c/a$a;->onUpdate()V

    :cond_0
    return-void
.end method
