.class Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;
.super Ljava/lang/Object;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showTimeoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "OppoEnrollActivity"

    const-string v0, "TimeoutDialog onDismiss"

    .line 617
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1502(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z

    .line 619
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1802(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z

    .line 620
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setResult(I)V

    .line 621
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    return-void
.end method
