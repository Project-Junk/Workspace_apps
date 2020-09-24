.class Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;
.super Ljava/lang/Object;
.source "EnrollGuideForBootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->showWakeUpArouseDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;I)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    iput p2, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "OppoEnrollGuideForBoot"

    const-string v0, "onDismiss"

    .line 311
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;->this$0:Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity$3;->val$resultCode:I

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;->access$000(Lcom/coloros/settings/feature/fingerprint/EnrollGuideForBootActivity;I)V

    return-void
.end method
