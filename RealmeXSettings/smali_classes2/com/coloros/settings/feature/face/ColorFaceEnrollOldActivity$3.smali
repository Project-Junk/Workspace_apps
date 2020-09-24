.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;
.super Ljava/lang/Object;
.source "ColorFaceEnrollOldActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "OppoFaceEnrollOldActivity"

    const-string v0, "TimeoutDialog onDismiss"

    .line 614
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setResult(I)V

    .line 616
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->finish()V

    return-void
.end method
