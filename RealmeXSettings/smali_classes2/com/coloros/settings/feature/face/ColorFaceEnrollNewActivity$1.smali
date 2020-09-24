.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;
.super Ljava/lang/Object;
.source "ColorFaceEnrollNewActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessage(I)Z

    .line 256
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z

    :cond_0
    return-void
.end method
