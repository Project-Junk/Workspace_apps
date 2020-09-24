.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;
.super Ljava/lang/Object;
.source "ColorFaceEnrollNewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 629
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "OppoFaceEnrollNewActivity"

    const-string v0, "TimeoutDialog onDismiss"

    .line 632
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setResult(I)V

    .line 634
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->finish()V

    return-void
.end method
