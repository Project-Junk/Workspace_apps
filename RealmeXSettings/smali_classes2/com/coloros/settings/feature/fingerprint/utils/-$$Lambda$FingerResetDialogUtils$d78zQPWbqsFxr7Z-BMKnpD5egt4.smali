.class public final synthetic Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;->f$0:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onSelected(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;->f$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->lambda$showFingerResetDailog$0(Landroid/app/Activity;ZIZ)V

    return-void
.end method
